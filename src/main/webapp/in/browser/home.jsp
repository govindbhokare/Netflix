<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<%session.setAttribute("email", session.getAttribute("email")); %>
<header>
    <nav>
        <div class="nav1">
            <div class="logo-container">
                <div class="logo"></div>
            </div>
            <div class="menu">
                <ul class="menu-list">
                    <li class="items"> Home</li>
                    <li  class="items">TV Shows</li>
                    <li  class="items">Movies</li>
                    <li  class="items">Latest</li>
                    <li  class="items">My List</li>
                </ul>
            </div>
        </div>
        <div class="list">
            <ul class="menu-list">
                <li class="items"> <i class="fa-solid fa-magnifying-glass"></i></li>
                <li  class="items">DVD</li>
                <li  class="items"><i class="fa-solid fa-gift"></i></li>
                <li  class="items"><i class="fa-regular fa-bell"></i></li>
                <li  class="items user"><i class="fa-regular fa-user"></i><h4 class="hide" style="display:none;position:absolute;margin-top:60px"><%=session.getAttribute("email") %></h4></li>
        
            </ul>
        </div>

    </nav>
</header>
<main>
    <section class="hero-section" style="background-image: url('https://image.tmdb.org/t/p/original/uCqXSfHymdbDMsFx8t0u0OPSuve.jpg&quot');">
       <div class="main-section"> <div class="title">
            <div class="hero-title"><h1>The Last Kingdom</h1></div>
            <div class="hero-discription">A show of heroic deeds and epic battles with a thematic depth that embraces politics, religion, warfare, courage, love, loyalty and our universal</div>

           
        </div>
        <div class="btn"><button class="btn1"><i class="fa-solid fa-play"></i>Play</button>
            <button class="btn2"><i class="fa-solid fa-list"></i>MyList</button>
            </div>
       
    </div>

    </section>
    <section class="movie-list" id="trending-now">
        <h2>Trending Now</h2>
        <div class="movies-other" id="trending-now-container"></div>
    </section>
    
    <section class="movie-list" id="top-rated">
        <h2>Top Rated</h2>
        <div class="movies-other" id="top-rated-container"></div>
    </section>
    
            <section class="movie-list" id="action-movies">
                <h2>Action Movies</h2>
                <div class="movies-other" id="action-movies-container"></div>
            </section>
            
            <section class="movie-list" id="comedy-movies">
                <h2>Comedy Movies</h2>
                <div class="movies-other" id="comedy-movies-container"></div>
            </section>
            
            <section class="movie-list" id="horror-movies">
                <h2>Horror Movies</h2>
                <div class="movies-other" id="horror-movies-container"></div>
            </section>
            
            <section class="movie-list" id="romance-movies">
                <h2>Romance Movies</h2>
                <div class="movies-other" id="romance-movies-container"></div>
            </section>
            
            <section class="movie-list" id="documentaries-movies">
                <h2>Documentaries</h2>
                <div class="movies-other" id="documentaries-movies-container"></div>
            </section>
        
</main>
<script type="text/javascript" src="home.js"></script>
<script type="text/javascript">

let a=document.querySelector(".user")

a.addEventListener("mouseenter",()=>{
	
	document.querySelector(".hide").style.display="block"
})
a.addEventListener("mouseleave",()=>{
	document.querySelector(".hide").style.display="none"
})
a.addEventListener("click",()=>{
	
window.location.href='userdetails.jsp'
})
</script>
</body>
</html>