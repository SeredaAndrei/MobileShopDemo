<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Контакты</title>
</head>
<body>
<jsp:include page="header.html"></jsp:include>
<article>
<h2>Наши контакты :</h2>
<p><img src=/Shop/pic/director.jpg width=90% >Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate</p>
<h3>Здесь вы можете оставить ваше сообщение :</h3>
<form name="cont" enctype="text/plain" method="post"><br>
<input type="text" name="name" size="50" value="Ваше имя"><br>
<input type="text" name="mail" size="50" value="E-mail"><br>
<textarea name="address" cols="50" rows="15">Текст сообщения</textarea><br>
<img src=/Shop/pic/pechat.jpg width=10% >
<input type="submit" value="Отправить">
<input type="reset" value="Очистить">
</form>
</article>
<jsp:include page="footer.html"></jsp:include>
</body>
</html>