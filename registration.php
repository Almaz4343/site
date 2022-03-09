<?

include_once 'sys/inc/start.php';
include_once 'sys/inc/compress.php';
include_once 'sys/inc/sess.php';
include_once 'sys/inc/home.php';
include_once 'sys/inc/settings.php';
include_once 'sys/inc/db_connect.php';
include_once 'sys/inc/ipua.php';
include_once 'sys/inc/fnc.php';
include_once 'sys/inc/shif.php';
$show_all=true;
include_once 'sys/inc/user.php';
only_unreg();
$set['title']='Регистрация';
include_once 'sys/inc/thead.php';
title();
aut();

if ($set['guest_select']=='1')msg("Доступ к сайту разрешен только авторизованым пользователям");
if ((!isset($_SESSION['refer']) || $_SESSION['refer']==NULL)
&& isset($_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_REFERER']!=NULL &&
!preg_match('#mail\.php#',$_SERVER['HTTP_REFERER']))
$_SESSION['refer']=str_replace('&','&amp;',preg_replace('#^http://[^/]*/#','/', $_SERVER['HTTP_REFERER']));if ($set['reg_select']=='close'){
$err='Регистрация временно приостановлена';
err();
include_once 'sys/inc/tfoot.php';
}
elseif($set['reg_select']=='open_mail' && isset($_GET['id']) && isset($_GET['activation']) && $_GET['activation']!=NULL)
{
if (mysql_result(mysql_query("SELECT COUNT(*) FROM `user` WHERE `id` = '".intval($_GET['id'])."' AND `activation` = '".my_esc($_GET['activation'])."'"),0)==1){
mysql_query("UPDATE `user` SET `activation` = null WHERE `id` = '".intval($_GET['id'])."' LIMIT 1");
$user = mysql_fetch_assoc(mysql_query("SELECT * FROM `user` WHERE `id` = '".intval($_GET['id'])."' LIMIT 1"));
mysql_query("INSERT INTO `reg_mail` (`id_user`,`mail`) VALUES ('$user[id]','$user[ank_mail]')");
msg('Ваш аккаунт успешно активирован');
$_SESSION['id_user']=$user['id'];
include_once 'sys/inc/tfoot.php';
}
}

if (isset($_SESSION['step']) && $_SESSION['step']==1 && mysql_result(mysql_query("SELECT COUNT(*) FROM `user` WHERE `nick` = '".$_SESSION['reg_nick']."'"),0)==0 && isset($_POST['pass1']) && $_POST['pass1']!=NULL && $_POST['pass2'] && $_POST['pass2']!=NULL){
if ($set['reg_select']=='open_mail'){
if (!isset($_POST['ank_mail']) || $_POST['ank_mail']==NULL)$err[]='Неоходимо ввести Email';
elseif (!preg_match('#^[A-z0-9-\._]+@[A-z0-9]{2,}\.[A-z]{2,4}$#ui',$_POST['ank_mail']))$err[]='Неверный формат Email';
elseif(mysql_result(mysql_query("SELECT COUNT(*) FROM `reg_mail` WHERE `mail` = '".my_esc($_POST['ank_mail'])."'"),0)!=0)
{
$err[]="Пользователь с этим E-mail уже зарегистрирован";
}
}if (strlen2($_POST['pass1'])<6)$err[]='По соображениям безопасности пароль не может быть короче 6-ти символов';
if (strlen2($_POST['pass1'])>32)$err[]='Длина пароля превышает 32 символа';
if ($_POST['pass1']!=$_POST['pass2'])$err[]='Пароли не совпадают';
if (!isset($_SESSION['captcha']) || !isset($_POST['chislo']) || $_SESSION['captcha']!=$_POST['chislo']){$err[]='Неверное проверочное число';}

if (!isset($err)){
if ($set['reg_select']=='open_mail'){
$activation=md5(passgen());
mysql_query("INSERT INTO `user` (`nick`, `pass`, `date_reg`, `date_last`, `pol`, `activation`, `ank_mail`) values('".$_SESSION['reg_nick']."', '".shif($_POST['pass1'])."', '$time', '$time', '".intval($_POST['pol'])."', '$activation', '".my_esc($_POST['ank_mail'])."')",$db);
$id_reg=mysql_insert_id();
$subject = "Активация аккаунта";
$regmail = "Здравствуйте $_SESSION[reg_nick]<br />
Для активации Вашего аккаунта перейдите по ссылке:<br />
<a href='http://$_SERVER[HTTP_HOST]/registration.php?id=$id_reg&amp;activation=$activation'>http://$_SERVER[HTTP_HOST]/registration.php?id=".mysql_insert_id()."&amp;activation=$activation</a><br />
Если аккаунт не будет активирован в течении 24 часов, он будет удален<br />
С уважением, администрация сайта<br />
";
$adds="From: \"password@$_SERVER[HTTP_HOST]\" <password@$_SERVER[HTTP_HOST]>\n";
$adds .= "Content-Type: text/html; charset=utf-8\n";
mail($_POST['ank_mail'],'=?utf-8?B?'.base64_encode($subject).'?=',$regmail,$adds);
}
else

//Внесения пользователя в базу

mysql_query("INSERT INTO `user` (`nick`, `ank_name`, `ank_fam`, `pass`, `date_reg`, `date_last`, `pol`, `ank_mail`) values('".$_SESSION['reg_nick']."', '".my_esc($_POST['name'])."', '".my_esc($_POST['fam'])."', '".shif($_POST['pass1'])."', '$time', '$time', '".intval($_POST['pol'])."', '".my_esc($_POST['mail'])."')",$db);

//Приветствие в смс + монеты + рейтинг
$uid=mysql_insert_id();
$mail=mysql_fetch_assoc(mysql_query("SELECT * FROM `reg_msg`"));
if ($mail['on']==1){
$array = array('{Name}');
$array_replace = array(''.my_esc($_POST['name']).''); 
$mess = str_replace($array, $array_replace,$mail['msg']);  
mysql_query("INSERT INTO `mail` (`id_user`, `id_kont`, `msg`, `time`) values('".$mail['id']."', '".$uid."', '".$mess."', '".$time."')");
mysql_query("UPDATE `user` SET `money`='".$mail['money']."', `rating`='".$mail['rating']."' WHERE `id`='".$uid."' ");
if ($mail['true']==1 && $mail['gift']!=NULL){
mysql_query("INSERT INTO `gifts_user` (`id_user`, `id_ank`, `id_gift`, `coment`, `status`, `time`) values('$uid', '$mail[id]', '$mail[gift]', '$mail[gift_msg]', '1', '$time')");
$id_gift = mysql_insert_id();
mysql_query("INSERT INTO `notification` (`avtor`, `id_user`, `id_object`, `type`, `time`) VALUES ('$mail[id]', '$uid', '$id_gift', 'new_gift', '$time')");
}
}

//Внесения пользователя в базу end

$user = mysql_fetch_assoc(mysql_query("SELECT * FROM `user` WHERE `nick` = '".my_esc($_SESSION['reg_nick'])."' AND `pass` = '".shif($_POST['pass1'])."' LIMIT 1"));

//Создание настроек пользователя
mysql_query("INSERT INTO `user_set` (`id_user`) VALUES ('$user[id]')");
mysql_query("INSERT INTO `discussions_set` (`id_user`) VALUES ('$user[id]')");
mysql_query("INSERT INTO `tape_set` (`id_user`) VALUES ('$user[id]')");
mysql_query("INSERT INTO `notification_set` (`id_user`) VALUES ('$user[id]')");

if (isset($_SESSION['http_referer']))
mysql_query("INSERT INTO `user_ref` (`time`, `id_user`, `type_input`, `url`) VALUES ('$time', '$user[id]', 'reg', '".my_esc($_SESSION['http_referer'])."')");
$_SESSION['id_user']=$user['id'];
setcookie('id_user', $user['id'], time()+60*60*24*365);
setcookie('pass', cookie_encrypt($_POST['pass1'],$user['id']), time()+60*60*24*365);
if ($set['reg_select']=='open_mail'){
msg('Вам необходимо активировать Ваш аккаунт по ссылке, высланной на Email');
}else{
mysql_query("update `user` set `wall` = '0' where `id` = '$user[id]' limit 1");
header('Location: /umenu.php?login=' . htmlspecialchars($_POST['reg_nick']) . '&pass=' . htmlspecialchars($_POST['pass1']));
}
echo "Если Ваш браузер не поддерживает Cookie, Вы можете создать закладку для автовхода<br />\n";
echo "<input type='text' value='http://$_SERVER[SERVER_NAME]/login.php?id=$user[id]&amp;pass=".htmlspecialchars($_POST['pass1'])."' /><br />\n";
if ($set['reg_select']=='open_mail')unset($user);

header('Location: /user/profil.php');

include_once 'sys/inc/tfoot.php';
}
}
elseif (isset($_POST['nick']) && $_POST['nick']!=NULL )
{
if (mysql_result(mysql_query("SELECT COUNT(*) FROM `user` WHERE `nick` = '".my_esc($_POST['nick'])."'"),0)==0)
{
$nick=my_esc($_POST['nick']);if( !preg_match("#^([A-zА-я0-9\-\_\ ])+$#ui", $_POST['nick']))$err[]='В логине присутствуют запрещенные символы';
if (preg_match("#[a-z]+#ui", $_POST['nick']) && preg_match("#[а-я]+#ui", $_POST['nick']))$err[]='Разрешается использовать символы только русского или только английского алфавита';
if (preg_match("#(^\ )|(\ $)#ui", $_POST['nick']))$err[]='Запрещено использовать пробел в начале и конце логина';
if (strlen2($nick)<3)$err[]='Короткий логин';
if (strlen2($nick)>32)$err[]='Длина логина превышает 32 символа';
}
else $err[]='Логин занят, выберите другой';if (!isset($err)){
$_SESSION['reg_nick']=$nick;
$_SESSION['step']=1;
//msg ("Логин \"$nick\" может быть успешно зарегистрирован");
}
}

err();

if (isset($_SESSION['step']) && $_SESSION['step']==1){

//Конец регистрации
echo '<div class="block">';

echo '</br><center><img src="/style/themes/default/logo.png"></br></br><b><font color="#999">Последний шаг, заполните все поля</font></b></center></br>';

echo '<form method="post" action="/registration.php?'.$passgen.'">
<input class="input_aut" placeholder="Логин" type="text" name="nick" maxlength="32" value="'.$_SESSION[reg_nick].'" required="">
<input class="button" type="submit" value="Изменить логин">
</form>';

echo '<form method="post" action="/registration.php?'.$passgen.'">
<input class="input_aut" placeholder="Имя" name="name" type="text" required="">
<input class="input_aut" placeholder="Фамилия" name="fam" type="text" required="">
<select class="input_aut" name="pol">
<option value="1">Мужской</option>
<option value="0">Женский</option>
</select>
<input class="input_aut" placeholder="Email" type="text" name="mail" required="">
<input class="input_aut" placeholder="Пароль" type="password" name="pass1" maxlength="32" required="">
<input class="input_aut" placeholder="Повторите пароль" type="password" name="pass2" maxlength="32" required="">
<span class="input_aut"><img src="/sys/captcha.php?'.$passgen.'&amp;SESS='.$sess.'"></span>
<input class="input_aut" placeholder="Код с картинки" name="chislo" maxlength="5" type="text" autocomplete="off" required="">
<input class="button" type="submit" value="Регистрация">
</form></br>';

echo '<center>Регистрируясь, вы принимаете наши <a href=""><b><font color="#999">Правила</font></b></a>.</center>';

echo '</div>';

}else{

//Начало регистрации
echo '<div class="block">';
echo '</br><center><img src="/style/themes/default/logo.png"></br></br><b><font color="#999">Для продолжения регистрации придумайте логин.</font></b></center></br>';
echo '<form method="post" action="/registration.php?'.$passgen.'">
<input class="input_aut" placeholder="Логин" type="text" name="nick" maxlength="32" required="">
<input class="button" type="submit" value="Продолжить">
</form></br>';
echo '<center>Регистрируясь, вы принимаете наши <a href=""><b><font color="#999">Правила</font></b></a>.</center>';
echo '</div>';

}

echo '<div style="padding:15px;" class="block mt10"><center>
Есть аккаунт? <a href="/"><font color="#3897f0">Вход</font></a>
</center></div>';

include_once 'sys/inc/tfoot.php';

?>