# csci_39537-final-project-weather-api

## Endpoints
1. /api/cities/{id} - Retrieves weather data for a specific city based on its ID.
2. /api/weather/{id} - Updates an existing weather data based on its ID.
3. /api/weather/{id} - Deletes an existing weather data based on its ID.

## Sample request bodies
### PUT /api/weather/{id}
```
{
    "temperature": 25.3,
    "high_temperature": 30.5,
    "humidity": 80,
    "weatherDescription": "Partly cloudy with a chance of showers"
}

```

## Sample response body
### GET /api/cities/{id}
```
{
    "id": 123,
    "cityName": "San Francisco",
    "countryCode": "US",
    "latitude": 37.7749,
    "longitude": -122.4194,
    "weather": {
        "description": "clear sky",
        "temperature": 18,
        "humidity": 45,
        "windSpeed": 4.12
    }
}
```

### PUT /api/weather/{id}
```
{
  "id": 12345,
  "cityId": 67890,
  "temperature": 25.5,
  "highTemperature": 28.3,
  "humidity": 60,
  "weatherDescription": "Partly cloudy"
}
```