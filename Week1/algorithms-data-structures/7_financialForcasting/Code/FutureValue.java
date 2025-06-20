package com.financialForcasting;

public class FutureValue {
	public static double futureValueCalculation(double presentValue, double rate, double n) {
		if(n==0)
			return presentValue;
		return (1 + rate) * futureValueCalculation(presentValue, rate, n-1);
	}
	
	public static void main(String[] args) {
		double presentValue = 100.0;
		double rate = 0.05;
		double n = 5;
		
		double futureValue = futureValueCalculation(presentValue, rate, n);
		System.out.println("Future value: " +futureValue);
	}
}
