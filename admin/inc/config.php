<?php
// Error Reporting Turn On
ini_set('error_reporting', E_ALL);

// Setting up the time zone
date_default_timezone_set('Asia/Dubai');

// Host Name
$dbhost = 'localhost';

// Database Name
$dbname = 'sale_amazon';

// Database Username
$dbuser = 'root';

// Database Password
$dbpass = '';

// Defining base url
define("BASE_URL", "http://localhost/4649blog_vps/");

// Getting Admin url
define("ADMIN_URL", BASE_URL . "admin" . "/");

// Getting Admin url
define("VIEWS", BASE_URL . "views" . "/");


try {
	$pdo = new PDO("mysql:host={$dbhost};dbname={$dbname}", $dbuser, $dbpass, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	//hai.phan set unicode fix text

}
catch( PDOException $exception ) {
	echo "Connection error :" . $exception->getMessage();
}