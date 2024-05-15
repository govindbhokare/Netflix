

const apiKey='272a9b8c240c72785d79d19becb35281';
document.addEventListener('DOMContentLoaded',function(){
    // const apiKey='272a9b8c240c72785d79d19becb35281';
    function fetchRandomMovie()
    {
        const url=`https://api.themoviedb.org/3/discover/movie?api_key=${apiKey}&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1`;
        
        fetch(url)
          .then(response => response.json())
          .then(data => {
              // Assuming the API returns a list of movies, pick a random one
              const movies = data.results;
              const randomIndex = Math.floor(Math.random() * movies.length);
              const movie = movies[randomIndex];

              // Call updateHeroSection to update the webpage
              updateHeroSection(movie);
          })
          .catch(error => console.error('Error fetching movie:', error));
  }

  function updateHeroSection(movie) {
      // Select the elements in your hero section
      const heroSection = document.querySelector('.hero-section');
      const title = document.querySelector('.hero-title');
      const description = document.querySelector('.hero-discription');

      // Update the hero section with the movie's title, description, and backdrop image
      if (movie && movie.backdrop_path) {
          heroSection.style.backgroundImage = `url('https://image.tmdb.org/t/p/original${movie.backdrop_path}')`;
      }
      title.textContent = movie.title;
      description.textContent = movie.overview;
  }

  fetchRandomMovie();
});


document.addEventListener('DOMContentLoaded', () => {
    fetchTrendingMovies();
  });
  
  async function fetchTrendingMovies() {
    const apiKey = 'a24ad015182e41e0eaab965b423ef7f6';
    const url = `https://api.themoviedb.org/3/trending/movie/week?api_key=${apiKey}`;
    try {
        const response = await fetch(url);
        const data = await response.json();
        displayMovies(data.results);
    } catch (error) {
        console.error('Error fetching trending movies:', error);
    }
  }
  
  function displayMovies(movies) {
    const container = document.querySelector('#Trending');
    container.innerHTML = ''; // Clear existing movies
  
    movies.forEach(movie => {
        if (movie.poster_path) { // Check if movie has a poster to display
            const movieElement = document.createElement('div');
            movieElement.classList.add('movie');
            movieElement.innerHTML = `
                <img src="https://image.tmdb.org/t/p/w500${movie.poster_path}" alt="${movie.title}" class="movie-img">
                <h3>${movie.title}</h3>
            `;
            container.appendChild(movieElement);
        }
    });
  }
  
  document.addEventListener('DOMContentLoaded', () => {
    fetchTopRatedMovies();
  });
  
  async function fetchTopRatedMovies() {
    const apiKey = 'a24ad015182e41e0eaab965b423ef7f6';
    const language = 'en-US'; // Specify the language
    const url = `https://api.themoviedb.org/3/movie/top_rated?api_key=${apiKey}&language=${language}`;
    try {
        const response = await fetch(url);
        const data = await response.json();
        displayMoviesTopRated(data.results);
    } catch (error) {
        console.error('Error fetching top-rated movies:', error);
    }
  }
  
  function displayMoviesTopRated(movies) {
    const container = document.querySelector('#Top_Rated');
    container.innerHTML = ''; // Clear existing movies
  
    movies.forEach(movie => {
        if (movie.poster_path) { // Check if movie has a poster to display
            const movieElement = document.createElement('div');
            movieElement.classList.add('movie');
            movieElement.innerHTML = `
                <img src="https://image.tmdb.org/t/p/w500${movie.poster_path}" alt="${movie.title}" class="movie-img">
                <h3>${movie.title}</h3>
            `;
            container.appendChild(movieElement);
        }
    });
  }
  // Replace with your actual API key
  const baseUrl = 'https://api.themoviedb.org/3';
  
  const genres = [
      { id: 28, container: 'action-movies-container' },
      { id: 35, container: 'comedy-movies-container' },
      { id: 27, container: 'horror-movies-container' },
      { id: 10749, container: 'romance-movies-container' },
      { id: 99, container: 'documentaries-movies-container' },
      
  ];
  
  function fetchMoviesByGenre(genreId, containerId) {
      const url = `${baseUrl}/discover/movie?api_key=${apiKey}&with_genres=${genreId}`;
  
      fetch(url)
          .then(response => response.json())
          .then(data => displayMovies(data.results, containerId))
          .catch(error => console.error('Error fetching data:', error));
  }
  
  function displayMovies(movies, containerId) {
      const container = document.getElementById(containerId);
      container.innerHTML = ''; // Clear existing content
  
      movies.forEach(movie => {
          if (movie.poster_path) {
              const imgElement = document.createElement('img');
              imgElement.src = `https://image.tmdb.org/t/p/w500${movie.poster_path}`;
              imgElement.alt = movie.title;
              imgElement.classList.add('movie-img');
  
              container.appendChild(imgElement);
          }
      });
  }
  
  // Fetch and display movies for each genre
  genres.forEach(genre => {
      fetchMoviesByGenre(genre.id, genre.container);
  });
  // Append these functions below your existing JavaScript code
  
  function fetchNetflixOriginals() {
    const url = `${baseUrl}/discover/tv?api_key=${apiKey}&with_networks=213`; // 213 is Netflix's network ID on TMDB
  
    fetch(url)
        .then(response => response.json())
        .then(data => displayMovies(data.results, 'netflix-originals-container', true)) // Pass true if it's a TV show to handle image paths correctly
        .catch(error => console.error('Error fetching data:', error));
  }
  
  function fetchTrendingNow() {
    const url = `${baseUrl}/trending/all/week?api_key=${apiKey}`;
  
    fetch(url)
        .then(response => response.json())
        .then(data => displayMovies(data.results, 'trending-now-container'))
        .catch(error => console.error('Error fetching data:', error));
  }
  
  function fetchTopRated() {
    const url = `${baseUrl}/movie/top_rated?api_key=${apiKey}`;
  
    fetch(url)
        .then(response => response.json())
        .then(data => displayMovies(data.results, 'top-rated-container'))
        .catch(error => console.error('Error fetching data:', error));
  }
  
  // Modify displayMovies function to handle TV show images
  function displayMovies(movies, containerId, isTVShow = false) {
    const container = document.getElementById(containerId);
    container.innerHTML = '';
  
    movies.forEach(movie => {
        const imgPath = isTVShow ? movie.poster_path : movie.backdrop_path;
        if (imgPath) {
            const imgElement = document.createElement('img');
            imgElement.src = `https://image.tmdb.org/t/p/w500${imgPath}`;
            imgElement.alt = movie.title || movie.name; // TV shows have 'name' instead of 'title'
            imgElement.classList.add('movie-img');
  imgElement.setAttribute('data-movie-id', movie.id);
            
            // Event listener for clicking on a movie image
            imgElement.addEventListener('click', () => {
                 window.location.href = `title.html?movieId=${imgElement.getAttribute('data-movie-id')}`; // Function to show movie details
            });
            container.appendChild(imgElement);
        }
    });
  }
  
  // Call these functions along with your genre-based functions
  fetchNetflixOriginals();
  fetchTrendingNow();
  fetchTopRated();
  
  const categories = [
    { id: 28, container: 'action-movies-container', type: 'genre' },
    { id: 35, container: 'comedy-movies-container', type: 'genre' },
    // Add other genres as needed
  
    // Netflix Originals - Assuming you're using a flag or identifier specific to your data source
    { id: 'netflix', container: 'netflix-originals-container', type: 'netflix' },
  
    // Trending Now
    { type: 'trending', container: 'trending-now-container', timeWindow: 'week' },
  
    // Top Rated
    { type: 'top_rated', container: 'top-rated-container' }
  ];