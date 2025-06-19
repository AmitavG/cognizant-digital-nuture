package com.singleton;

public class Main {
	public static void main(String[] args) {
		Logger obj1 = Logger.getInstance();
		obj1.log("First log message");
		Logger obj2 = Logger.getInstance();
		obj2.log("Second log message'");
		
		if(obj1 == obj2)
			System.out.println("Only one obj has been created, Singleton works");
		else
			System.out.println("Multiple objs have been created, Singleton violated;");
	}
}
