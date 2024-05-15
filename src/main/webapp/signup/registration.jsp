<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="registration.css">

</head>
<body>
    <script src="https://code.jquery.com/jquery-3.3.1.js"
    integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous">
    </script>
<script>
    $(function () {
        $("#header").load("/header.html");
        $("#footer").load("/footer.html");
    });
</script>
<header id="header"></header>
<main>
<div class="container">
    <div class="img"></div>
    <div class="text1">
        <div class="div1">STEP 2 OF 3</div>
        <h1>Finish setting up your account</h1>
        <p align="center">Netflix is personalised for you. Create a password to watch on any device at any time.</p>
    </div>
    <div class="next-center"><div class="bt-next"><a href="regform.jsp?pack=<%=request.getParameter("pack") %>&price=<%=request.getParameter("price") %>" class="button-next">Next </a></div></div>

</div>
</main>

<footer id="footer"></footer>
<script src="planform.js"></script>

</body>
</html>