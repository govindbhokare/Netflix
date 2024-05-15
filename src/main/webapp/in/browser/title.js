function getMovieIdFromQuery() {
    const params = new URLSearchParams(window.location.search);
    return params.get('movieId'); // "movieId" is the query parameter name
}
async function displayMovieDetails(movieId) {
	
    const apiKey='272a9b8c240c72785d79d19becb35281';// Ensure you replace this with your actual TMDb API key
    const url = `https://api.themoviedb.org/3/movie/${movieId}?api_key=${apiKey}&language=en-US`;

    try {
        const response = await fetch(url);
        if (!response.ok) {
            throw new Error('Failed to fetch movie details');
        }
        const movie = await response.json();

        // Assuming you have specific elements to display these details
        // Update the hero section as an example
        const heroSection = document.querySelector('.hero-section');
        const title = document.querySelector('.title');
        const videoSection = document.querySelector('.videos-section');
        heroSection.style.backgroundImage = `url('https://image.tmdb.org/t/p/original${movie.backdrop_path}')`;
        title.querySelector('.hero-title').textContent = movie.title;
        videoSection.querySelector('.videoSectionTitle').textContent = movie.title;
        heroSection.querySelector('.hero-title2').textContent = movie.tagline; // or use movie.title
        heroSection.querySelector('.p1').textContent = new Date(movie.release_date).getFullYear() + ' |';
        heroSection.querySelector('.p3').textContent = `| ${Math.floor(movie.runtime / 60)}h ${movie.runtime % 60}m |`;
        heroSection.querySelector('.hero-discription').textContent = movie.overview;
        // Continue updating other details as per your structure

    } catch (error) {
        console.error('Error:', error);
    }
}


document.addEventListener('DOMContentLoaded', () => {
    const movieId = getMovieIdFromQuery();
    if (movieId) {
		fetchMovieVideos(movieId)
        displayMovieDetails(movieId);
    } else {
        console.log("Movie ID not found in URL");
        // Handle cases where movieId is not present in URL
    }
});
function fetchMovieVideos(movieId) {
    const apiKey='272a9b8c240c72785d79d19becb35281';
    const url = `https://api.themoviedb.org/3/movie/${movieId}/videos?api_key=${apiKey}&language=en-US`;

    fetch(url)
        .then(response => response.json())
        .then(data => {
            displayMovieVideos(data.results);
        })
        .catch(error => console.error('Error fetching movie videos:', error));
}
function displayMovieVideos(videos) {
    const videosSection = document.querySelector('.videos');
    videosSection.innerHTML = ''; // Clear existing videos

    if (videos.length === 0) {
        videosSection.innerHTML = '<p>No videos available.</p>';
        return;
    }
let abc=0
    videos.forEach(video => {
		abc++;
        if (video.site === "YouTube") {
            const videoUrl = `https://www.youtube.com/embed/${video.key}`;
            const videoElement = `<iframe width="560" height="315" src="${videoUrl}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>`;
              if(abc==3){
			videosSection.innerHTML="<br>"
			abc=0;
		}else{
            videosSection.innerHTML += videoElement;
            }
        }
      
    });
}