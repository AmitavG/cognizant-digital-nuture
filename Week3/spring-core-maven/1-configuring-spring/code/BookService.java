package com.library;

public class BookService {
	
	private BookRepository bookrepo;
	
	public BookService(BookRepository bookrepo) {
		this.bookrepo = bookrepo;
	}
	
	public void addBook(String book) {
		System.out.println("adding book: " +book);
		bookrepo.saveBook(book);
	}
}
