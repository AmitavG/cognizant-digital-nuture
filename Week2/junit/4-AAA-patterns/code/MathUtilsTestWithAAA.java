package com.example;

import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class MathUtilsTestWithAAA {
	private MathUtils math;
	
	@Before
	public void setup() {
		math = new MathUtils();
		System.out.println("setup complete");
	}
	
	@After
	public void tearDown() {
		System.out.println("teardown complete");
	}
	
	@Test
	public void testAddition() {
		//Arrange
		int a = 10;
		int b = 20;
		
		//Act
		int result = math.add(a, b);
		
		//Assert
		assertEquals(30, result);
	}
	
	@Test
    public void testSubtraction() {
        // Arrange
        int a = 15;
        int b = 5;

        // Act
        int result = math.subtract(a, b);

        // Assert
        assertEquals(10, result);
    }

    @Test
    public void testMultiplication() {
        // Arrange
        int a = 4;
        int b = 5;

        // Act
        int result = math.multiply(a, b);

        // Assert
        assertEquals(20, result);
    }

    @Test(expected = ArithmeticException.class)
    public void testDivideByZero() {
        // Arrange
        int a = 10;
        int b = 0;

        // Act
        math.divide(a, b);
    }
}
