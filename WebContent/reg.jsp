<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Регистрация</title>
</head>
<body>
<jsp:include page="header.html"></jsp:include>
<article>
<h2>Регистрация :</h2>
<form name="register" enctype="text/plain" method="post"><br>
<input type="text" name="name" size="50" value="Ваше имя"><br>
<input type="text" name="mail" size="50" value="E-mail"><br>
<input type="text" name="phone" size="50" value="Телефон"><br>
<input type="text" name="login" size="50" value="Логин"><br>
<input type="text" name="password" size="50" value="Пароль"><br>
<textarea name="address" cols="50" rows="5">Адрес доставки</textarea><br>
<input type="submit" value="Отправить">
<input type="reset" value="Очистить">
</form>
</article>
<jsp:include page="footer.html"></jsp:include>
</body>
</html>