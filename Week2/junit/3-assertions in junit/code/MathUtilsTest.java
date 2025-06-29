package com.example;

import static org.junit.Assert.*;

import org.junit.Test;

public class MathUtilsTest {
	MathUtils math = new MathUtils();
	
	@Test
	public void testAddition() {
		assertEquals(10, math.add(5, 5));
		assertNotEquals(10, math.add(5, 6));
	}
	
	@Test
	public void testSubtraction() {
		assertTrue(math.subtract(10, 5) == 5);
		assertFalse(math.subtract(10, 6) == 5);
	}
	
	@Test
	public void testMultiplication() {
		assertEquals(25, math.multiply(5, 5));
		assertTrue(math.multiply(2, 3) == 6);
	}
	
	@Test(expected = ArithmeticException.class)
    public void testDivideByZero() {
        math.divide(10, 0);
    }
}
