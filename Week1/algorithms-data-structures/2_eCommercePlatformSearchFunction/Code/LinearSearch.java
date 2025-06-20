package com.ecom_search;

import java.util.List;

public class LinearSearch {
	public static Product search(List<Product> products, String target) {
		for(Product prod: products) {
			if(prod.getProductName().equalsIgnoreCase(target))
				return prod;
		}
		return null;
	}
}
