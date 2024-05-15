<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="planform.css">
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
    <main>
        <div class="text">
            <h5>STEP 1 OF 3</h5>
            <h1>Choose the plan that is right for you</h1>
        </div>
        <div class="main-container">
            <div class="container premium-container">
                <div class="premium content">
                    <span class="premium-chec">
                    <i class="fa-solid fa-circle-check   checkbox"></i>
                </span>
                    <h3>Premium <br>
                        4K + HDR</h3>

                </div>
                <div class="texts">
                    <ul>
                        <li class="faint">Monthly price</li>
                        <li class="dark"> &#8377; 649</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Video and sound quality
                        </li>
                        <li class="dark"> Best</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Resolution </li>
                        <li class="dark"> 4K (Ultra HD) + HDR</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Spatial audio (immersive sound)
                        </li>
                        <li class="dark"> Included</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Supported devices

                        </li>
                        <li class="dark"> TV, computer, mobile phone, tablet</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Devices your household can watch at the same time

                        </li>
                        <li class="dark"> 4</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Download devices

                        </li>
                        <li class="dark"> 6</li>

                    </ul>
                    <div class="border">

                    </div>
                </div>
            </div>
            <div class="container Standard-container">
                <div class="premium content">
                    <span class="standard-chec">
                    <i class="fa-solid fa-circle-check  checkbox"></i>
                </span>
                    <h3>Standard  <br>
                        1080p</h3>
                  

                </div>
                <div class="texts">
                    <ul>
                        <li class="faint">Monthly price</li>
                        <li class="dark"> &#8377;499</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Video and sound quality
                        </li>
                        <li class="dark"> Great</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Resolution </li>
                        <li class="dark"> 1080p (Full HD)</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Supported devices
                           
                        </li>
                        <li class="dark">  TV, computer, mobile phone, tablet</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Devices your household can watch at the same time

                        </li>
                        <li class="dark"> 2</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Download devices
                        </li>
                        <li class="dark"> 2</li>

                    </ul>
                    <div class="border">

                    </div>
                   
                </div>
            </div>
            <div class="container Basic-container">
                <div class="premium content">
                    <span class="basic-chec ">
                    <i class="fa-solid fa-circle-check checkbox"></i>
                </span>
                    <h3>Basic <br>
                        720p</h3>

                </div>
                <div class="texts">
                    <ul>
                        <li class="faint">Monthly price</li>
                        <li class="dark"> &#8377;199</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Video and sound quality
                        </li>
                        <li class="dark">Good </li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Resolution </li>
                        <li class="dark"> 720p (HD)</li>

                    </ul>
                    <div class="border">

                    </div>
                   
                    <ul>
                        <li class="faint">Supported devices

                        </li>
                        <li class="dark"> TV, computer, mobile phone, tablet</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Devices your household can watch at the same time

                        </li>
                        <li class="dark"> 1</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Download devices

                        </li>
                        <li class="dark"> 1</li>

                    </ul>
                    <div class="border">

                    </div>
                </div>
            </div>
            <div class="container Mobile-container">
                <div class="premium content">
                    <span class="mobile-chec">
                    <i class="fa-solid fa-circle-check  checkbox"></i>
                </span>
                    <h3>Mobile <br>
                        480p</h3>

                </div>
                <div class="texts">
                    <ul>
                        <li class="faint">Monthly price</li>
                        <li class="dark"> &#8377;149</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Video and sound quality
                        </li>
                        <li class="dark">Fair </li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Resolution </li>
                        <li class="dark"> 
                            480p </li>

                    </ul>
                    <div class="border">

                    </div>
                    
                    <ul>
                        <li class="faint">Supported devices

                        </li>
                        <li class="dark"> Mobile phone, tablet</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Devices your household can watch at the same time

                        </li>
                        <li class="dark"> 1</li>

                    </ul>
                    <div class="border">

                    </div>
                    <ul>
                        <li class="faint">Download devices

                        </li>
                        <li class="dark"> 1</li>

                    </ul>
                    <div class="border">

                    </div>
                </div>
            </div>
        </div>
        <div class="parag">
            <p>HD (720p), Full HD (1080p), Ultra HD (4K) and HDR availability subject to your internet service and device capabilities. Not all content is available in all resolutions. See our Terms of Use for more details.
                Only people who live with you may use your account. Watch on 4 different devices at the same time with Premium, 2 with Standard, and 1 with Basic and Mobile.
                </p>
        </div>
        <div class="next-center"><div class="bt-next" onclick="savef()"><a href="registration.jsp" class="button-next link">Next </a></div></div>

    </main>
    

    <footer id="footer"></footer>
    <script src="planform.js"></script>

</body>

</html>