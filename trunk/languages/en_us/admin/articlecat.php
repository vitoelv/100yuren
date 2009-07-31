<?php

/**
 * ECSHOP Article\'s Category management program language file
 * ============================================================================
 * All right reserved (C) 2005-2007 Beijing Yi Shang Interactive Technology
 * Development Ltd.
 * Web site: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * This is a free/open source software；it means that you can modify, use and
 * republish the program code, on the premise of that your behavior is not for
 * commercial purposes.
 * ============================================================================
 * $Author: paulgao $
 * $Date: 2007-01-30 16:02:08 +0800 (Tuesday, 30 Jan. 2007) $
 * $Id: articlecat.php 4752 2007-01-30 08:02:08Z paulgao $
*/

$_LANG['cat_name'] = 'Name';
$_LANG['cat_keywords'] = 'Keywords';
$_LANG['type_name'][COMMON_CAT] = '普通分类';
$_LANG['type_name'][SYSTEM_CAT] = '系统分类';
$_LANG['type_name'][INFO_CAT]   = '网店信息';
$_LANG['type_name'][UPHELP_CAT] = '帮助分类';
$_LANG['type_name'][HELP_CAT]   = '网店帮助';
$_LANG['cat_desc'] = 'Description';
$_LANG['show_in_nav'] = 'Display in navigation';

$_LANG['isopen'] = 'Yes';
$_LANG['isclose'] = 'No';
$_LANG['parent_cat'] = '上级分类';
$_LANG['cat_top'] = '顶级分类';
$_LANG['not_allow_add'] = '你所选分类不允许添加子分类';
$_LANG['not_allow_remove'] = '系统保留分类，不允许删除';
$_LANG['is_fullcat'] = '该分类下还有子分类，请先删除其子分类';
$_LANG['add_article'] = 'Add new article';

$_LANG['articlecat_edit'] = 'Edit article category';

/* Prompting message */
$_LANG['catname_exist'] = '%s already exists.';
$_LANG['parent_id_err'] = '分类名 %s 的父分类不能设置成本身或本身的子分类';
$_LANG['back_list'] = 'Return to category list';
$_LANG['continue_add'] = 'Continue add new category';
$_LANG['catadd_succed'] = 'Add successfully!';
$_LANG['catedit_succed'] = 'Edit category %s successfully!';
$_LANG['back_list'] = 'Return to category list';
$_LANG['continue_add'] = 'Continue add new category';
$_LANG['no_catname'] = 'Please enter a category name.';
$_LANG['edit_fail'] = 'Edit failed.';
$_LANG['enter_int'] = 'Please enter an integer';
$_LANG['not_emptycat'] = 'Wrong, there are articles in the category.';

/* Help */
$_LANG['notice_keywords'] ='The keywords is optional, for search conveniently.';
$_LANG['notice_isopen'] ='Whether display the category in navigation.';

/* JS language item */
$_LANG['js_languages']['no_catname'] = 'Please enter article category name.';
$_LANG['js_languages']['sys_hold'] = '系统保留分类，不允许添加子分类';
$_LANG['js_languages']['remove_confirm'] = 'Are you sure delete the selected category?';

?>