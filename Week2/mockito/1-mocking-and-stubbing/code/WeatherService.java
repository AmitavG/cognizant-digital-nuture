package com.mockito;

public class WeatherService {
	
	private WeatherApiClient apiClient;
	
	public WeatherService(WeatherApiClient apiClient) {
		this.apiClient = apiClient;
	}
	
	public String fetchWeatherReport(String city) {
		return "Weather in " +city +": " +apiClient.getWeather(city);
	}
}
