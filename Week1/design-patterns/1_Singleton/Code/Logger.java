package com.singleton;

public class Logger {
	private static Logger instance;
	
	private Logger() {
		System.out.println("Instance created");
	}
	
	public static Logger getInstance() {
		if(instance == null)
			instance = new Logger();
		return instance;
	}
	
	public void log(String str) {
		System.out.println("Log: " +str);
	}
}