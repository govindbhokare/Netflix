<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="creditoption.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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

        <div class="c-container">
            <div class="star"><span>STEP 3 OF 3</span>
                <h1 class="heading">
                    Set up your credit or debit card</h1></div>
            <div class="inner-container">
           
                <div class="imgs"><img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/VISA.png" alt="Visa" class="logoIcon VISA default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/VISA@2x.png 2x" data-uia="logoIcon-VISA"> <img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/MASTERCARD.png" alt="Mastercard" class="logoIcon MASTERCARD default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/MASTERCARD@2x.png 2x" data-uia="logoIcon-MASTERCARD"><img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/DINERS.png" alt="Diners Club" class="logoIcon DINERS default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/DINERS@2x.png 2x" data-uia="logoIcon-DINERS"></div>

<div class="inputs1">
<form action="${pageContext.request.contextPath }/creditServlet" method="post">
<div class="card-num"><input type="text" class="card-num1" placeholder="Card number" required></div>
<div class="expiration">
    <input type="" class="expiration1" placeholder="Expiration date" required>
    <input type="text" class="cvv" placeholder="CVV" required>
    <input name=email value="<%=request.getParameter("email") %>" hidden="" required>
</div>
<div class="name-card">
    <input type="text" placeholder="Name on card" required> 
</div>

<div class="pack">
    <div class="pack1">
<p class="p1">&#8377;<%=request.getParameter("price") %>/month</p>
<p class="p2"><%=request.getParameter("pack") %></p>
</div>
<button class="button1">Change</button>

</div>
<div class="pargrf">
    <p>Any payment above ₹ 2000 shall need additional authentication.</p>

        <p class="p5">By checking the checkbox below, you agree to our Terms of Use, Privacy Statement, and that you are over 18. Netflix will automatically continue your membership and charge the membership fee (currently ₹199/month) to your payment method until you cancel. You may cancel at any time to avoid future charges.
        </p>
      
</div>
<div class="agree"> <input type="checkbox" class="check"><span>I agree</span></div>

<div class="next-center"><div class="bt-next"><input type=submit value="Start Membership" class="button-next" style="background-color:red;border:none;"> </form></div></div>
        </div>
</div></div>


    </main>
     <footer id="footer"></footer>
</body>
</html>