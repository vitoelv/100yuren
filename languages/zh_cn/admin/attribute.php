<?php
/**
 * ECSHOP 商品类型管理语言文件
 * ============================================================================
 * 版权所有 (C) 2005-2006 康盛创想（北京）科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * 这是一个免费开源的软件；这意味着您可以在不用于商业目的的前提下对程序代码
 * 进行修改、使用和再发布。
 * ============================================================================
 * $Author: wj $
 * $Date: 2007-11-12 16:36:14 +0800 (星期一, 12 十一月 2007) $
 * $Id: attribute.php 13593 2007-11-12 08:36:14Z wj $
*/

/* 列表 */
$_LANG['by_goods_type'] = '按课程类型显示：';
$_LANG['all_goods_type'] = '所有课程类型';

$_LANG['attr_id'] = '编号';
$_LANG['cat_id'] = '课程类型';
$_LANG['attr_name'] = '属性名称';
$_LANG['attr_input_type'] = '属性值的录入方式';
$_LANG['attr_values'] = '可选值列表';
$_LANG['attr_type'] = '购买课程时是否需要选择该属性的值';

$_LANG['value_attr_input_type'][ATTR_TEXT] = '手工录入';
$_LANG['value_attr_input_type'][ATTR_OPTIONAL] = '从列表中选择';
$_LANG['value_attr_input_type'][ATTR_TEXTAREA] = '多行文本框';

$_LANG['drop_confirm'] = '您确实要删除该属性吗？';

/* 添加/编辑 */
$_LANG['label_attr_name'] = '属性名称：';
$_LANG['label_cat_id'] = '所属课程类型：';
$_LANG['label_attr_index'] = '能否进行检索：';
$_LANG['label_is_linked'] = '相同属性值的课程是否关联？';
$_LANG['no_index'] = '不需要检索';
$_LANG['keywords_index'] = '关键字检索';
$_LANG['range_index'] = '范围检索';
$_LANG['note_attr_index'] = '不需要该属性成为检索课程条件的情况请选择不需要检索，需要该属性进行关键字检索课程时选择关键字检索，如果该属性检索时希望是指定某个范围时，选择范围检索。';
$_LANG['label_attr_input_type'] = '该属性值的录入方式：';
$_LANG['text'] = '手工录入';
$_LANG['select'] = '从下面的列表中选择（一行代表一个可选值）';
$_LANG['text_area'] = '多行文本框';
$_LANG['label_attr_values'] = '可选值列表：';
$_LANG['label_attr_group'] = '属性分组：';
$_LANG['label_attr_type'] = '属性是否可选';
$_LANG['note_attr_type'] = '选择“是”时，可以对课程该属性设置多个值，同时还能对不同属性值指定不同的价格加价，用户购买课程时需要选定具体的属性值。选择“否”时，课程的该属性值只能设置一个值，用户只能查看该值。';

$_LANG['add_next'] = '添加下一个属性';
$_LANG['back_list'] = '返回属性列表';

$_LANG['add_ok'] = '添加属性 [%s] 成功。';
$_LANG['edit_ok'] = '编辑属性 [%s] 成功。';

/* 提示信息 */
$_LANG['name_exist'] = '该属性名称已存在，请您换一个名称。';
$_LANG['drop_confirm'] = '您确实要删除该属性吗？';
$_LANG['notice_drop_confirm'] = '已经有%s个课程使用该属性，您确实要删除该属性吗？';
$_LANG['name_not_null'] = '属性名称不能为空。';

$_LANG['no_select_arrt'] = '您没有选择需要删除的属性名';
$_LANG['drop_ok'] = '成功删除了 %d 条课程属性';

$_LANG['js_languages']['name_not_null'] = '请您输入属性名称。';
$_LANG['js_languages']['values_not_null'] = '请您输入该属性的可选值。';
$_LANG['js_languages']['cat_id_not_null'] = '请您选择该属性所属的课程类型。';

?>