import mapboxgl from 'mapbox-gl'

const initMapbox = () => {
  mapboxgl.accessToken = 'pk.eyJ1IjoiYWc1IiwiYSI6ImNraDRvOWk3MzAzZG0ycm4xdjl5M2U0cWwifQ.OHQHZi0CursUr7JqHb1tig';
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11'
  });

}
export { initMapbox }
