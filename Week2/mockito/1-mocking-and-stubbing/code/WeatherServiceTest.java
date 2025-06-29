package com.mockito;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import org.junit.Test;

public class WeatherServiceTest {
	
	@Test
	public void testFetchWeatherReport() {
		WeatherApiClient mockApi = mock(WeatherApiClient.class);
		
		when(mockApi.getWeather("Hyderabad")).thenReturn("Sunny");
		
		WeatherService serv = new WeatherService(mockApi);
		String report = serv.fetchWeatherReport("Hyderabad");
		System.out.println(report);
		
		assertEquals("Weather in Hyderabad: Sunny", report);
	}
	
	@Test
	public void simpleTest() {
	    System.out.println("JUnit is running");
	    assertTrue(true);
	}

}
