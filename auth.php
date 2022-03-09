<?

include_once 'sys/inc/start.php';
include_once 'sys/inc/compress.php';
include_once 'sys/inc/sess.php';
include_once 'sys/inc/home.php';
include_once 'sys/inc/settings.php';
include_once 'sys/inc/db_connect.php';
include_once 'sys/inc/ipua.php';
include_once 'sys/inc/fnc.php';
$show_all=true;
include_once 'sys/inc/user.php';
only_unreg();

if (isset($_GET['pass']) && $_GET['pass']='ok')
$_SESSION['message'] = 'Пароль отправлен вам на E-mail';
if ($set['guest_select']=='1')
$_SESSION['message'] = "Доступ к сайту разрешен только авторизованым пользователям";
$set['title']='Вход';
include_once 'sys/inc/thead.php';
title();
aut();

if ((!isset($_SESSION['refer']) || $_SESSION['refer']==NULL)
&& isset($_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_REFERER']!=NULL &&
!preg_match('#mail\.php#',$_SERVER['HTTP_REFERER']))
$_SESSION['refer']=str_replace('&','&amp;',preg_replace('#^http://[^/]*/#','/', $_SERVER['HTTP_REFERER']));

header('Location: /');

include_once 'sys/inc/tfoot.php';

?>