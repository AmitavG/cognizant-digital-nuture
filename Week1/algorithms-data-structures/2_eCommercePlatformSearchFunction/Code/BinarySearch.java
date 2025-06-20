package com.ecom_search;

import java.util.List;

public class BinarySearch {
	public static Product search(List<Product> products, String target) {
		int left = 0;
		int right = products.size()-1;
		
		while(left <= right) {
			int mid = (left + right) / 2;
			Product midProduct = products.get(mid);
			int comparision = midProduct.getProductName().compareToIgnoreCase(target);
			
			if(comparision == 0)
				return midProduct;
			else if(comparision < 0)
				left = mid + 1;
			else
				right = mid - 1;
		}
		return null;
	}
}
