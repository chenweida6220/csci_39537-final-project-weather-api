DROP DATABASE IF EXISTS weather_api;
CREATE DATABASE weather_api;
USE weather_api;

CREATE TABLE cities (
    id INT NOT NULL AUTO_INCREMENT,
    cityName VARCHAR(255) NOT NULL,
    countryCode VARCHAR(2) NOT NULL,
    latitude DECIMAL(7,4) NOT NULL,
    longitude DECIMAL(7,4) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE weather_data (
    id INT NOT NULL AUTO_INCREMENT,
    cityId INT NOT NULL,
    temperature DECIMAL(5,2) NOT NULL,
    high_temperature BOOLEAN NOT NULL,
    humidity DECIMAL(3,1),
    weatherDate CHAR(10),
    weatherDescription VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (cityId) REFERENCES cities(id)
);

