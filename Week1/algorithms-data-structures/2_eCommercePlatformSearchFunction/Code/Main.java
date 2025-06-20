package com.ecom_search;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		List<Product> products = new ArrayList<>();
		products.add(new Product(1, "Football", "Sports"));
		products.add(new Product(2, "Watch", "Electronics"));
		products.add(new Product(3, "Headphones", "Electronics"));
		products.add(new Product(4, "Jersey", "Clothes"));
		products.add(new Product(5, "Diet Coke", "Softdrinks"));
		products.add(new Product(6, "Fifa", "Video Game"));
		products.add(new Product(7, "Peabut Butter", "Food"));
		
		//Linear Search
		System.out.println("Search for ?");
		String prod = sc.nextLine();
		Product linear = LinearSearch.search(products, prod);
		System.out.println(linear != null ? linear : "Product not found");
		
		products.sort(Comparator.comparing(Product::getProductName, String.CASE_INSENSITIVE_ORDER));
		
		//Binary Search
		System.out.println("\nSearch for ?");
		prod = sc.nextLine();
		Product binary = BinarySearch.search(products, prod);
		System.out.println(binary != null ? binary : "Product not found");
		
	}
}
