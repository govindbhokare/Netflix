<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="varifyemail.css">
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
    <div class="v-container">
        <div class="v-logo"> </div>
        <div class="vspan">
            <span>STEP 3 OF 4</span>
        </div>
      
        <div class="subheader">
            <h1>Great, now let us verify your email</h1>
            <p>Click the link we sent to <span class="dynamic"><%=request.getParameter("email")%> </span>to verify.</p>
            <p>Verifying your email will improve account security and help you receive important Netflix communications.
            </p>
        </div>
    </div>
    <div class="next-center"><div class="bt-next"><a href="paymentPicker.jsp?pack=<%=request.getParameter("pack") %>&price=<%=request.getParameter("price") %>&email=<%=request.getParameter("email") %>" class="button-next">Skip </a></div></div>
</div>

    </main>
    <footer id="footer"></footer>
    <script src="varifyemail.js"></script> 
</body>
</html>