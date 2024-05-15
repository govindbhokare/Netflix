<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="regform.css">
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
    <h4>STEP 2 OF 3</h4>
    <h1>Create a password to start your membership</h1>
    <p>Just a few more steps and you're done!
        We hate paperwork, too.
        </p>
        <form action="${pageContext.request.contextPath }/varifyemail" method="post"><div class="inputs">
        <input type="gmail" name=email placeholder="     Email" id="email" required="required">
            <input type="password" name=pword placeholder="     Add a password" id="password" required="required">
            <input type="text"value="<%=request.getParameter("pack")%>" name="pack" hidden="">
          <input type="text"value="<%=request.getParameter("price")%>" name="price"hidden="">
    </div>
    <div class="next-center"><div class="bt-next"><input type="submit"  value=Next  class="button-next" style="background-color:red;border:none;"></div></div>
</div>
</form>
    

    </main>  
    <footer id="footer"></footer> 
    <script src="varifyemail.js"></script>
</body>
</html>