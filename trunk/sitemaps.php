<?php

/**
 * ECSHOP google sitemap 文件
 * ===========================================================
 * 版权所有 (C) 2005-2007 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ==========================================================
 * $Author: testyang $
 * $Date: 2008-01-28 18:33:06 +0800 (星期一, 28 一月 2008) $
 * $Id: sitemaps.php 14079 2008-01-28 10:33:06Z testyang $
 */

class sitemap
{
    var $head = "<\x3Fxml version=\"1.0\" encoding=\"UTF-8\"\x3F>\n<urlset xmlns=\"http://www.google.com/schemas/sitemap/0.84\">\n";
    var $footer = "</urlset>\n";
    var $item;
    function item($item)
    {
        $this->item .= "<url>\n";
        foreach($item as $key => $val){
            $this->item .=" <$key>".htmlentities($val, ENT_QUOTES)."</$key>\n";
        }
        $this->item .= "</url>\n";
    }
    function generate()
    {
        $all = $this->head;
        $all .= $this->item;
        $all .= $this->footer;

        return $all;
    }
}

define('IN_ECS', true);
define('INIT_NO_USERS', true);
define('INIT_NO_SMARTY', true);
require(dirname(__FILE__) . '/includes/init.php');
if (file_exists(ROOT_PATH . 'data/sitemap.dat') && time() - filemtime(ROOT_PATH . 'data/sitemap.dat') < 86400)
{
    $out = file_get_contents(ROOT_PATH . 'data/sitemap.dat');
}
else
{
    $site_url = rtrim($ecs->url(),'/');
    $sitemap = new sitemap;
    $config = unserialize($_CFG['sitemap']);
    $item = array(
        'loc'        =>  "$site_url/",
        'lastmod'     =>  local_date('Y-m-d'),
        'changefreq' => $config['homepage_changefreq'],
        'priority' => $config['homepage_priority'],
    );
    $sitemap->item($item);
    /* 商品分类 */
    $sql = "SELECT cat_id FROM " .$ecs->table('category'). " ORDER BY parent_id";
    $res = $db->query($sql);

    while ($row = $db->fetchRow($res))
    {
        $item = array(
            'loc'        =>  "$site_url" . build_uri('category', array('cid' => $row['cat_id'])),
            'lastmod'     =>  local_date('Y-m-d'),
            'changefreq' => $config['category_changefreq'],
            'priority' => $config['category_priority'],
        );
        $sitemap->item($item);
    }
    /* 文章分类 */
    $sql = "SELECT cat_id FROM " .$ecs->table('article_cat'). " WHERE cat_type=1";
    $res = $db->query($sql);

    while ($row = $db->fetchRow($res))
    {
        $item = array(
            'loc'        =>  "$site_url/" . build_uri('article_cat', array('acid' => $row['cat_id'])),
            'lastmod'     =>  local_date('Y-m-d'),
            'changefreq' => $config['category_changefreq'],
            'priority' => $config['category_priority'],
        );
        $sitemap->item($item);
    }
    /* 商品 */
    $sql = "SELECT goods_id,  last_update FROM " .$ecs->table('goods'). " WHERE is_delete = 0";
    $res = $db->query($sql);

    while ($row = $db->fetchRow($res))
    {
        $item = array(
            'loc'        =>  "$site_url/" . build_uri('goods', array('gid' => $row['goods_id'])),
            'lastmod'     =>  local_date('Y-m-d', $row['last_update']),
            'changefreq' => $config['content_changefreq'],
            'priority' => $config['content_priority'],
        );
        $sitemap->item($item);
    }
    /* 文章 */
    $sql = "SELECT article_id,  add_time FROM " .$ecs->table('article'). " WHERE is_open=1";
    $res = $db->query($sql);

    while ($row = $db->fetchRow($res))
    {
        $item = array(
            'loc'        =>  "$site_url/" . build_uri('article', array('aid' => $row['article_id'])),
            'lastmod'     =>  local_date('Y-m-d', $row['add_time']),
            'changefreq' => $config['content_changefreq'],
            'priority' => $config['content_priority'],
        );
        $sitemap->item($item);
    }
    $out =  $sitemap->generate();
    file_put_contents(ROOT_PATH . 'data/sitemap.dat', $out);
}
if (function_exists('gzencode'))
{
    header('Content-type: application/x-gzip');
    $out = gzencode($out, 9);
}
else
{
    header('Content-type: application/xml; charset=utf-8');
}
die($out);
?>
