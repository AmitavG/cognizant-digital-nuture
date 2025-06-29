package com.slf4j;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LoggingExample {
	private static final Logger logger = LoggerFactory.getLogger(LoggingExample.class);
	
	public static void main(String[] main) {
		logger.error("This is an error message");
		logger.error("This is another error message");
	}
}
