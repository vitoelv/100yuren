<?php

/**
 * ECSHOP 课程批量上传、修改语言文件
 * ============================================================================
 * 版权所有 (C) 2005-2006 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: huangjb $
 * $Date: 2007-11-19 11:20:17 +0800 (星期一, 19 十一月 2007) $
 * $Id: goods_batch.php 13672 2007-11-19 03:20:17Z huangjb $
 */

$_LANG['select_method'] = '选择课程的方式：';
$_LANG['by_cat'] = '根据课程分类、品牌';
$_LANG['by_sn'] = '根据课程货号';
$_LANG['select_cat'] = '选择课程分类：';
$_LANG['select_brand'] = '选择课程品牌：';
$_LANG['goods_list'] = '课程列表：';
$_LANG['src_list'] = '待选列表：';
$_LANG['dest_list'] = '选定列表：';
$_LANG['input_sn'] = '输入课程货号：<br />（每行一个）';
$_LANG['edit_method'] = '编辑方式：';
$_LANG['edit_each'] = '逐个编辑';
$_LANG['edit_all'] = '统一编辑';
$_LANG['go_edit'] = '进入编辑';

$_LANG['notice_edit'] = '会员价格为-1表示会员价格将根据会员等级折扣比例计算';

$_LANG['goods_class'] = '课程类别';
$_LANG['g_class'][G_REAL] = '实体课程';
$_LANG['g_class'][G_CARD] = '虚拟卡';

$_LANG['goods_sn'] = '货号';
$_LANG['goods_name'] = '课程名称';
$_LANG['market_price'] = '市场价格';
$_LANG['shop_price'] = '本店价格';
$_LANG['integral'] = '积分购买';
$_LANG['give_integral'] = '赠送积分';
$_LANG['goods_number'] = '库存';
$_LANG['brand'] = '品牌';

$_LANG['batch_edit_ok'] = '批量修改成功';

$_LANG['goods_cat'] = '所属分类：';
$_LANG['csv_file'] = '上传批量csv文件：';
$_LANG['notice_file'] = '（CSV文件中一次上传课程数量最好不要超过1000，CSV文件大小最好不要超过500K.）';
$_LANG['file_charset'] = '文件编码：';
$_LANG['download_file'] = '下载批量CSV文件（%s）';
$_LANG['use_help'] = '使用说明：' .
        '<ol>' .
          '<li>根据使用习惯，下载相应语言的csv文件，例如中国内地用户下载简体中文语言的文件，港台用户下载繁体语言的文件；</li>' .
          '<li>填写csv文件，可以使用excel或文本编辑器打开csv文件；<br />' .
              '碰到“是否精品”之类，填写数字0或者1，0代表“否”，1代表“是”；<br />' .
              '课程图片和课程缩略图请填写带路径的图片文件名，其中路径是相对于 [根目录]/images/ 的路径，例如图片路径为[根目录]/images/200610/abc.jpg，只要填写 200610/abc.jpg 即可；<br />' .
          '<li>将填写的课程图片和课程缩略图上传到相应目录，例如：[根目录]/images/200610/；</li>' .
          '<li>选择所上传课程的分类以及文件编码，上传csv文件</li>' .
        '</ol>';

$_LANG['js_languages']['please_select_goods'] = '请您选择课程';
$_LANG['js_languages']['please_input_sn'] = '请您输入课程货号';
$_LANG['js_languages']['goods_cat_not_leaf'] = '请选择底级分类';
$_LANG['js_languages']['please_select_cat'] = '请您选择所属分类';
$_LANG['js_languages']['please_upload_file'] = '请您上传批量csv文件';

// 批量上传课程的字段
$_LANG['upload_goods']['goods_name'] = '课程名称';
$_LANG['upload_goods']['goods_sn'] = '课程货号';
$_LANG['upload_goods']['brand_name'] = '课程品牌';   // 需要转换成brand_id
$_LANG['upload_goods']['market_price'] = '市场售价';
$_LANG['upload_goods']['shop_price'] = '本店售价';
$_LANG['upload_goods']['integral'] = '积分购买额度';
$_LANG['upload_goods']['original_img'] = '课程原始图';
$_LANG['upload_goods']['goods_img'] = '课程图片';
$_LANG['upload_goods']['goods_thumb'] = '课程缩略图';
$_LANG['upload_goods']['keywords'] = '课程关键词';
$_LANG['upload_goods']['goods_brief'] = '简单描述';
$_LANG['upload_goods']['goods_desc'] = '详细描述';
$_LANG['upload_goods']['goods_weight'] = '课程重量（kg）';
$_LANG['upload_goods']['goods_number'] = '库存数量';
$_LANG['upload_goods']['warn_number'] = '库存警告数量';
$_LANG['upload_goods']['is_best'] = '是否精品';
$_LANG['upload_goods']['is_new'] = '是否新品';
$_LANG['upload_goods']['is_hot'] = '是否热销';
$_LANG['upload_goods']['is_on_sale'] = '是否上架';
$_LANG['upload_goods']['is_alone_sale'] = '能否作为普通课程销售';
$_LANG['upload_goods']['is_real'] = '是否实体课程';

$_LANG['batch_upload_ok'] = '批量上传成功';
$_LANG['goods_upload_confirm'] = '批量上传确认';
?>