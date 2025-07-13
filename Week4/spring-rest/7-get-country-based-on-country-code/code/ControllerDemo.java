package com.cognizant.springlearn.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.cognizant.springlearn")
public class ControllerDemo {
	public static void main( String[] args ){
        SpringApplication.run(ControllerDemo.class, args);
    }
}
