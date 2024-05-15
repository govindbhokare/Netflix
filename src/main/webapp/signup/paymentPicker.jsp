<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="paymentPicker.css">
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
<div class="container">
    <div class="v-container">
        <div class="v-logo"> </div>
        <div class="vspan">
            <span>STEP 3 OF 3</span>
        </div>
      
        <div class="subheader">
            <h1>
                Choose how to pay</h1>
            <p>Your payment is encrypted and you can change your payment method at anytime.</p>
            <p id="strong">Secure for peace of mind.
                Cancel easily online.
            </p>
        </div>
    </div>
    <div class="payment">
<div class="credit" onclick="window.location.href='creditoption.jsp?pack=<%=request.getParameter("pack") %>&price=<%=request.getParameter("price") %>&email=<%=request.getParameter("email") %>';">
<div class="c-text1">Credit or Debit Card</div>
<div class="imgs"><img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/VISA.png" alt="Visa" class="logoIcon VISA default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/VISA@2x.png 2x" data-uia="logoIcon-VISA"> <img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/MASTERCARD.png" alt="Mastercard" class="logoIcon MASTERCARD default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/MASTERCARD@2x.png 2x" data-uia="logoIcon-MASTERCARD"><img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/DINERS.png" alt="Diners Club" class="logoIcon DINERS default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/DINERS@2x.png 2x" data-uia="logoIcon-DINERS"></div>
<div class="arrow"><i class="fa-solid fa-angle-right"></i></div>
</div>
<div class="upi" onclick="window.location.href='upipaymentopt.jsp?pack=<%=request.getParameter("pack") %>&price=<%=request.getParameter("price") %>&email=<%=request.getParameter("email") %>';">
    <div class="c-text">UPI AutoPay</div>
    <div class="imgs"><img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/BHIM.png" alt="BHIM" class="logoIcon BHIM default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/BHIM@2x.png 2x" data-uia="logoIcon-BHIM"><img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/PAYTM.png" alt="Paytm" class="logoIcon PAYTM default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/PAYTM@2x.png 2x" data-uia="logoIcon-PAYTM"><img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/PHONEPE.png" alt="PhonePe" class="logoIcon PHONEPE default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/PHONEPE@2x.png 2x" data-uia="logoIcon-PHONEPE"><img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/AMAZONPAY.png" alt="Amazon Pay" class="logoIcon AMAZONPAY default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/AMAZONPAY@2x.png 2x" data-uia="logoIcon-AMAZONPAY"><img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/GPAY.png" alt="Google Pay" class="logoIcon GPAY default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/GPAY@2x.png 2x" data-uia="logoIcon-GPAY">                          </div>
    <div class="arrow"><i class="fa-solid fa-angle-right"></i></div>
</div>

    </div>
</div>

    </main>
    <footer id="footer"></footer>
    <script src="varifyemail.js"></script> 
</body>
</html>