<?php

/**
 * ECSHOP 课程分类管理语言文件
 * ============================================================================
 * 版权所有 (C) 2005-2006 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: hackfan $
 * $Date: 2007-10-15 11:55:09 +0800 (星期一, 15 十月 2007) $
 * $Id: category.php 12908 2007-10-15 03:55:09Z hackfan $
*/

/* 课程分类字段信息 */
$_LANG['cat_id'] = '编号';
$_LANG['cat_name'] = '分类名称';
$_LANG['isleaf'] = '不允许';
$_LANG['noleaf'] = '允许';
$_LANG['keywords'] = '关键字';
$_LANG['cat_desc'] = '分类描述';
$_LANG['parent_id'] = '上级分类';
$_LANG['sort_order'] = '排序';
$_LANG['measure_unit'] = '数量单位';
$_LANG['delete_info'] = '删除选中';
$_LANG['category_edit'] = '编辑课程分类';
$_LANG['move_goods'] = '转移课程';
$_LANG['cat_top'] = '顶级分类';
$_LANG['show_in_nav'] = '是否显示在导航栏';
$_LANG['cat_style'] = '分类的样式表文件';
$_LANG['is_show'] = '是否显示';
$_LANG['goods_number'] = '课程数量';
$_LANG['grade'] = '价格区间个数';
$_LANG['notice_grade'] = '该选项表示该分类下课程最低价与最高价之间的划分的等级个数，填0表示不做分级，最多不能超过10个。';
$_LANG['short_grade'] = '价格分级';

$_LANG['nav'] = '导航栏';

$_LANG['back_list'] = '返回分类列表';
$_LANG['continue_add'] = '继续添加分类';

$_LANG['notice_style'] = '您可以为每一个课程分类指定一个样式表文件。例如文件存放在 themes 目录下则输入：themes/style.css';

/* 操作提示信息 */
$_LANG['catname_empty'] = '分类名称不能为空!';
$_LANG['catname_exist'] = '已存在相同的分类名称!';
$_LANG["parent_isleaf"] = '所选分类不能是末级分类!';
$_LANG["cat_isleaf"] = '不是末级分类或者此分类下还存在有课程,您不能删除!';
$_LANG["cat_noleaf"] = '底下还有其它子分类,不能修改为末级分类!';
$_LANG["is_leaf_error"] = '所选择的上级分类不能是当前分类或者当前分类的下级分类!';
$_LANG['grade_error'] = '价格分级数量只能是0-10之内的整数';

$_LANG['catadd_succed'] = '新课程分类添加成功!';
$_LANG['catedit_succed'] = '课程分类编辑成功!';
$_LANG['catdrop_succed'] = '课程分类删除成功!';
$_LANG['catremove_succed'] = '课程分类转移成功!';
$_LANG['move_cat_success'] = '转移课程分类已成功完成!';

$_LANG['cat_move_desc'] = '什么是转移课程分类?';
$_LANG['select_source_cat'] = '选择要转移的分类';
$_LANG['select_target_cat'] = '选择目标分类';
$_LANG['source_cat'] = '从此分类';
$_LANG['target_cat'] = '转移到';
$_LANG['start_move_cat'] = '开始转移';
$_LANG['cat_move_notic'] = '在添加课程或者在课程管理中,如果需要对课程的分类进行变更,那么你可以通过此功能,正确管理你的课程分类。';

$_LANG['cat_move_empty'] = '你没有正确选择课程分类!';

$_LANG['sel_goods_type'] = '请选择课程类型';
$_LANG['sel_filter_attr'] = '请选择筛选属性';
$_LANG['filter_attr'] = '筛选属性';
$_LANG['filter_attr_notic'] = '筛选属性可在前分类页面筛选课程';

/*JS 语言项*/
$_LANG['js_languages']['catname_empty'] = '分类名称不能为空!';
$_LANG['js_languages']['unit_empyt'] = '数量单位不能为空!';
$_LANG['js_languages']['is_leafcat'] = '您选定的分类是一个末级分类。\r\n新分类的上级分类不能是一个末级分类';
$_LANG['js_languages']['not_leafcat'] = '您选定的分类不是一个末级分类。\r\n课程的分类转移只能在末级分类之间才可以操作。';

?>