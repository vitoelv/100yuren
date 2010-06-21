<?php

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');


/*------------------------------------------------------ */
//-- PROCESSOR
/*------------------------------------------------------ */

assign_template();

$smarty->assign('helps',      get_shop_help());       // 网店帮助
$smarty->assign('lang',       $_LANG);

$ip=$_POST["ip"];
$signup_list = signup_list($ip);
$smarty->assign('signup_list',   $signup_list);

$smarty->display('58.dwt');


/**
 * 获得报名者列表
 *
 * @access  public
 * @param   string      $ip       网吧IP
 * @return  array
 */
function signup_list($ip = '')
{
	
    $sql = 'SELECT * ' .'FROM ' . $GLOBALS['ecs']->table('course_signup') . ' AS c ' .'WHERE request_ip = '."'".$ip."'";

    if ($ip == 'IASTUDY')
    	$sql = 'SELECT * ' .'FROM ' . $GLOBALS['ecs']->table('course_signup') . ' AS c ';    

    $result = $GLOBALS['db']->getAll($sql);

    $signup_list = array();
    foreach ($result AS $idx => $row)
    {
	  $signup_list[$idx]['id']           = $row['id'];
	  $signup_list[$idx]['user_name']           = $row['user_name'];
	  $signup_list[$idx]['true_name']           = $row['true_name'];
	  $signup_list[$idx]['sex']           = $row['sex'];
	  $signup_list[$idx]['record']           = $row['record'];
	  $signup_list[$idx]['telephone']           = $row['telephone'];
	  $signup_list[$idx]['mobile_phone']           = $row['mobile_phone'];
	  $signup_list[$idx]['address']           = $row['address'];
	  $signup_list[$idx]['postcode']           = $row['postcode'];
	  $signup_list[$idx]['email']           = $row['email']; 
	  $signup_list[$idx]['age']           = $row['age'];
	  $signup_list[$idx]['payment']           = $row['payment'];
	  $signup_list[$idx]['postscript']           = $row['postscript'];
	  $signup_list[$idx]['signup_time']           = $row['signup_time'];
	  $signup_list[$idx]['course_id']           = $row['course_id'];
	  $signup_list[$idx]['course_name']           = $row['course_name'];
	  $signup_list[$idx]['signup_date']           = $row['signup_date'];
	  $signup_list[$idx]['status']           = $row['status'];
	  $signup_list[$idx]['request_ip']           = $row['request_ip'];
	  $signup_list[$idx]['request_url']           = $row['request_url'];  
	  $signup_list[$idx]['qq']           = $row['qq'];
	  $signup_list[$idx]['business_type']           = $row['business_type'];    
    }

    return $signup_list;
}

?>