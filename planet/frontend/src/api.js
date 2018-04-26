import star_id from './star'

export default function api_fetch(uri){
	return fetch('http://localhost:3001' + uri + '?play_id=1&star_id='+star_id)
} 
