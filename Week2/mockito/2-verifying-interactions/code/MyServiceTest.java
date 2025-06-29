package com.mockito;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;

import org.junit.Test;

public class MyServiceTest {
	
	@Test
	public void testVerifyInteraction() {
		ExternalApi mockApi = mock(ExternalApi.class);
		
		MyService serv = new MyService(mockApi);
		serv.fetchData();
		
		verify(mockApi.getData());
	}
}
