<?php

/**
 * The ECSHOP Control panel member the data integration plug-in management program language file
 * ============================================================================
 * All right reserved (C) 2005-2007 Beijing Yi Shang Interactive Technology
 * Development Ltd.
 * Web site: http://www.ecshop.com
 * ----------------------------------------------------------------------------
 * This is a free/open source software;it mean that you can modify, use and
 * republish the program code, on the premise of that your behavior is not for
 * commercial purposes.
 * ============================================================================
 * $Author: weberliu $
 * $Date: 2006-10-1814:16:40+0800$(Wednesday,18 October 2006)
 * $Id: integrate.php 1961 2006-10-18 06:16:40Z weberliu $
*/

$_LANG['integrate_name'] ='Name';
$_LANG['integrate_version'] ='Version';
$_LANG['integrate_author'] ='Author';
$_LANG['integrate_setup'] ='Setup member data integration plug-in.';
$_LANG['continue_sync'] ='Continue synchronous member\'s data.';
$_LANG['go_userslist'] ='Return list of member number.';

/* The form related language item*/
$_LANG['lable_db_host'] ='Database server host:';
$_LANG['lable_db_name'] ='Database:';
$_LANG['lable_db_chartset'] ='The database character list gather:';
$_LANG['lable_db_user'] ='Database account number:';
$_LANG['lable_db_pass'] ='Database password:';
$_LANG['lable_prefix'] ='Datasheet prefixion:';
$_LANG['lable_url'] ='Complete URL of the integrated system:';

/* The form related labguage item(discus5x) */
$_LANG['cookie_prefix']          = 'COOKIE prefix:';

$_LANG['sync_start'] ='Synchronous start position:';
$_LANG['sync_number'] ='Synchronous record quantity:';
$_LANG['sync_target'] ='Synchronous target:';
$_LANG['sync_target_sys'][0] ='ECSHOP';
$_LANG['sync_target_sys'][1] ='Integrate the third square system currently';
$_LANG['btn_sync'] ='Start synchronous member\'s data.';

/* Hint an information*/
$_LANG['update_success'] ='Member data integration plug-in is configed successfully.';
$_LANG['install_confirm'] ="Please don\'t edit integration plug-in in use. \nMember data will be cleared if you switch integration plug-in, and include:\n member information, member account datails, member address of receipt, member bonus, order information, cart. \r\n Are you sure install the member data integration plug-in?";
$_LANG['neednot_sync'] ='You needn\'t synchronous operation, beacuse the ECSHOP member system is in use now.';
$_LANG['sync_success'] ='There are %d record for total member amount.<Br/>This synchronous start position is %d, synchronous quantity is %d, synchronous %d record successfully.';
$_LANG['sync_notics'] ='<Strong>Please use the function carefully.</strong><the div style="color: red">You don\'t need a synchronous data in the normal usage</div><div>If you want to integrate member\'s data of other systems or return to the ECSHOP member\'s system  after use a period time. Existing member\'s data synchronize with the third-party system by this function, or the third-party system member\'s data ECSHOP.</div';
$_LANG['need_not_setup'] ='You needn\'t config it while use the ECSHOP member\'s system.';
$_LANG['different_domain'] ='The integration object and ECSHOP of[with] your setup is not under same area.<Br/>you member\'s data that can share that system, but can\'t carry out to register in the meantime.';


/* 表单相关语言项 */
$_LANG['db_notice'] = '点击“<font color="#000000">下一步</font>”将引导你到将商城用户数据同步到整合论坛。如果不需同步数据请点击“<font color="#000000">直接保存配置信息</font>”';

$_LANG['lable_db_host'] = '数据库服务器主机名：';
$_LANG['lable_db_name'] = '数据库名：';
$_LANG['lable_db_chartset'] = '数据库字符集：';
$_LANG['lable_is_latin1'] = '是否为latin1编码';
$_LANG['lable_db_user'] = '数据库帐号：';
$_LANG['lable_db_pass'] = '数据库密码：';
$_LANG['lable_prefix'] = '数据表前缀：';
$_LANG['lable_url'] = '被整合系统的完整 URL：';
/* 表单相关语言项(discus5x) */
$_LANG['cookie_prefix']          = 'COOKIE前缀：';
$_LANG['cookie_salt']          = 'COOKIE加密串：';
$_LANG['button_next'] = '下一步';
$_LANG['button_force_save_config'] = '直接保存配置信息';
$_LANG['save_confirm'] = '您确定要直接保存配置信息吗？';
$_LANG['button_save_config'] = '保存配置信息';

$_LANG['error_db_msg'] = '数据库地址、用户或密码不正确';
$_LANG['error_table_exist'] = '整合论坛关键数据表不存在，你填写的信息有误';
$_LANG['error_db_exist'] = '数据库不存在';

$_LANG['notice_latin1'] = '该选项填写错误时将可能到导致中文用户名无法使用';
$_LANG['error_not_latin1'] = '整合数据库检测到不是latin1编码！请重新选择';
$_LANG['error_is_latin1'] = '整合数据库检测到是lantin1编码！请重新选择';
$_LANG['invalid_db_charset'] = '整合数据库检测到是%s 字符集，而非%s 字符集';
$_LANG['error_latin1'] = '你填写的整合信息会导致严重错误，无法完成整合';


/* 检查同名用户 */
$_LANG['conflict_username_check'] = '检查商城用户是否和整合论坛用户有重名';
$_LANG['check_notice'] = '本页将检测商城已有用户和论坛用户是否有重名，点击“开始检查前”，请为商城重名用户选择一个默认处理方法';
$_LANG['default_method'] = '如果检测出商城有重名用户，请为这些用户选择一个默认处理方法';
$_LANG['shop_user_total'] = '商城共有 %s 个用户待检查';
$_LANG['lable_size'] = '每次检查用户个数';
$_LANG['start_check'] = '开始检查';
$_LANG['next'] = '下一步';
$_LANG['checking'] = '正在检查...(请不要关闭浏览器)';
$_LANG['notice'] = '已经检查 %s / %s ';
$_LANG['check_complete'] = '检查完成';

/* 同名用户处理 */
$_LANG['conflict_username_modify'] = '商城重名用户列表';
$_LANG['modify_notice'] = '以下列出了所有商城与论坛的重名用户及处理方法。如果您已确认所有操作，请点击“开始整合”；您对重名用户的操作的更改需要点击按钮“保存本页更改”才能生效。';
$_LANG['page_default_method'] = '本页面中重名用户默认处理方法';
$_LANG['lable_rename'] = '商城重名用户加后缀';
$_LANG['lable_delete'] = '删除商城的重名用户及相关数据';
$_LANG['lable_ignore'] = '保留商城重名用户，论坛同名用户视为同一用户';
$_LANG['short_rename'] = '商城用户改名为';
$_LANG['short_delete'] = '删除商城用户';
$_LANG['short_ignore'] = '保留商城用户';
$_LANG['user_name'] = '商城用户名';
$_LANG['email'] = 'email';
$_LANG['reg_date'] = '注册日期';
$_LANG['all_user'] = '所有商城重名用户';
$_LANG['error_user'] = '需要重新选择操作的商城用户';
$_LANG['rename_user'] = '需要改名的商城用户';
$_LANG['delete_user'] = '需要删除的商城用户';
$_LANG['ignore_user'] = '需要保留的商城用户';

$_LANG['submit_modify'] = '保存本页变更';
$_LANG['button_confirm_next'] = '开始整合';


/* 用户同步 */
$_LANG['user_sync'] = '同步商城数据到论坛，并完成整合';
$_LANG['button_pre'] = '上一步';
$_LANG['task_name'] = '任务名';
$_LANG['task_status'] = '任务状态';
$_LANG['task_del'] = '%s 个商城用户数待删除';
$_LANG['task_rename'] = '%s 个商城用户需要改名';
$_LANG['task_sync'] = '%s 个商城用户需要同步到论坛';
$_LANG['task_save'] = '保存配置信息，并完成整合';
$_LANG['task_uncomplete'] = '未完成';
$_LANG['task_run'] = '执行中 (%s / %s)';
$_LANG['task_complete'] = '已完成';
$_LANG['start_task'] = '开始任务';
$_LANG['sync_status'] = '已经同步 %s / %s';
$_LANG['sync_size'] = '每次处理用户数量';
$_LANG['sync_ok'] = '恭喜您。整合成功';

$_LANG['save_ok'] = '保存成功';

/* 积分设置 */
$_LANG['no_points'] = '没有检测到论坛有可以兑换的积分';
$_LANG['bbs'] = '论坛';
$_LANG['shop_pay_points'] = '商城消费积分';
$_LANG['shop_rank_points'] = '商城等级积分';
$_LANG['add_rule'] = '新增规则';
$_LANG['modify'] = '修改';
$_LANG['rule_name'] = '兑换规则';
$_LANG['rule_rate'] = '兑换比例';

/* JS language item */
$_LANG['js_languages']['no_host'] ='The database server host can\'t be blank.';
$_LANG['js_languages']['no_user'] ='The database account number can\'t be blank.';
$_LANG['js_languages']['no_name'] ='The database can\'t be blank.';
$_LANG['js_languages']['no_integrate_url']='Please enter complete URL of conformity object.';
$_LANG['js_languages']['install_confirm']="Please don\'t optional replace conformity objectt in the system. \\nAre you sure install the member data conformity plug-in?";
$_LANG['js_languages']['num_invalid'] ='The synchronous data record a number isn\'t an integer';
$_LANG['js_languages']['start_invalid'] ='The start position of the synchronous data isn\'t an integer';
$_LANG['js_languages']['sync_confirm'] ="Synchronize member\'s data will rebuild the target data table. \\nPlease backup your data before carrying out synchronize. \\nAre you sure start to synchronize member\'s data?";
$_LANG['cookie_prefix_notice'] = 'UTF8 version of the cookie prefix is xnW_，GB2312/GBK version of the cookie prefix is KD9_。';

?>