<?

include_once 'sys/inc/start.php';
include_once 'sys/inc/compress.php';
include_once 'sys/inc/sess.php';
include_once 'sys/inc/home.php';
include_once 'sys/inc/settings.php';
include_once 'sys/inc/db_connect.php';
include_once 'sys/inc/ipua.php';
include_once 'sys/inc/fnc.php';
include_once 'sys/inc/user.php';
$set['title']='Ошибка';
include_once 'sys/inc/thead.php';
title();
err();
aut();

echo '<div class="block"><center>
<img width="100"src="/img/error.png"></br></br>
Такой страницы не существует!
</center></div>';

include_once 'sys/inc/tfoot.php';

?>