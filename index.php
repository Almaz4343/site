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
$set['title']='Главная';
include_once 'sys/inc/thead.php';
title();
err();

if (isset($user)){
# Для авторизованых переадресация на новости
header('Location: /user/feed');
}else{
# Для гостей авторизация
echo '<div class="block">
</br><center><img src="/style/themes/default/logo.png"></center></br>
<form method="post" action="/login.php">
<input class="input_aut" placeholder="Логин" type="text" name="nick" required="">
<input class="input_aut" placeholder="Пароль" type="password" name="pass" required="">
<input class="button" type="submit" value="Войти">
</form>

<table style="text-align:center;padding: 20px;" cellpadding="0" cellspacing="0">
<td><div style="background: #e2e2e2; height: 1px; color: white;">-</div></td>
<td style="width:80px;"><div style="color: #999; font-weight: 600; font-size: 20px;">или</div></td>
<td><div style="background: #e2e2e2; height: 1px; color: white;">-</div></td>
</table>

<a style="display: block; color: black; text-align: center; padding: 0 0 10px 0;" href="/pass.php">Забыли пароль?</a>

</div>

<div style="padding:15px;" class="block mt10"><center>
У вас ещё нет аккаунта? <a href="/registration.php"><b><font color="#3897f0">Зарегистрироваться</font></b></a>
</center></div>';
}

include_once 'sys/inc/tfoot.php';

?>