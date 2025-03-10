import axios from 'axios';

const options = {
  method: 'GET',
  url: 'https://irctc1.p.rapidapi.com/api/v3/trainBetweenStations',
  params: {
    fromStationCode: 'BVI',
    toStationCode: 'NDLS',
    dateOfJourney: '2025-03-10'
  },
  headers: {
    'x-rapidapi-key': 'e08426dc57msh350d5439ff566fbp173c00jsn648c9b6af3a5',
    'x-rapidapi-host': 'irctc1.p.rapidapi.com'
  }
};

try {
	const response = await axios.request(options);
	console.log(response.data);
} catch (error) {
	console.error(error);
}