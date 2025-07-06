package com.library;

public class BookService {
	
	private BookRepository bookrepo;
	
	public BookService() {
//		this.bookrepo = bookrepo;
		System.out.println("default constructor");
	}
	
	public void setBookRepository(BookRepository bookrepo) {
		System.out.println("setter injection");
		this.bookrepo = bookrepo;
	}
	
	public void addBook(String book) {
		System.out.println("adding book: " +book);
		bookrepo.saveBook(book);
	}
}
