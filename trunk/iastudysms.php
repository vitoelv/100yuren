<?php   
define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require(ROOT_PATH . 'includes/lib_order.php');
require_once(ROOT_PATH . 'includes/lib_common.php');

$postscript=$_POST["contenthide"];
$postscript = urldecode($postscript); 
$true_name=$_POST["option1hide"];
$true_name= urldecode($true_name); //rawurldecode

$telephone=$_POST["phonehide"];
$telephone = urldecode($telephone); 
$request_url=$_POST["url"];
$request_url = urldecode($request_url); 


$status = -1;
$business_type = 2; //1 is user signup, 2 is user consult
$request_ip = GetIP();
$time = gmtime();
$signup_date = date("Y-m-d H:i:s");
$sql = "INSERT INTO " . $GLOBALS['ecs']->table('course_signup') . 
			"(true_name, telephone, " .
			" postscript, signup_date,request_ip, request_url,business_type," .
			"status,signup_time)".
			" VALUES('" .$true_name. "','" .$telephone. "','" .
					$postscript  ."', '" .$signup_date ."', '" 
					.$request_ip ."', '".$request_url ."', '".$business_type ."', '".$status ."', '".$time . "')";    

   					
$db->query($sql);

function GetIP(){ 
	if (getenv("HTTP_CLIENT_IP") && strcasecmp(getenv("HTTP_CLIENT_IP"), "unknown")) 
		$ip = getenv("HTTP_CLIENT_IP"); 
	else if (getenv("HTTP_X_FORWARDED_FOR") && strcasecmp(getenv("HTTP_X_FORWARDED_FOR"), "unknown")) 
		$ip = getenv("HTTP_X_FORWARDED_FOR"); 
	else if (getenv("REMOTE_ADDR") && strcasecmp(getenv("REMOTE_ADDR"), "unknown")) 
		$ip = getenv("REMOTE_ADDR"); 
	else if (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], "unknown")) 
		$ip = $_SERVER['REMOTE_ADDR']; 
	else 
		$ip = "unknown"; 
	return($ip); 
}

?>  
 

