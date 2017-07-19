<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Корзина</title>
</head>
<body>
<jsp:include page="header.html"></jsp:include>
<article>
<h2>Ваша корзина :</h2>
<h3>Для оформления заказа вам необходимо авторизоваться либо зарегистрироваться!</h3>
<img src=/Shop/pic/important.jpg width=20% >
<h4>Авторизация :</h4>
<img src=/Shop/pic/cart.jpg width=50% >
<form name="enter" enctype="text/plain" method="post"><br>
<input type="login" name="login" size="50" value="Логин"><br>
<input type="password" name="password" size="50" value="Пароль"><br>
<input type="submit" value="Отправить">
<input type="reset" value="Очистить">
</form>
<h4>Зарегистрироваться можно <a href=reg.jsp>здесь :</a></h4>
</article>
<jsp:include page="footer.html"></jsp:include>
</body>
</html>