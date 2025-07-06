package com.cognizant.ormlearn.model;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CountryService {
	
	private final CountryRepository repo;
	
	public CountryService(CountryRepository repo) {
		this.repo = repo;
	}
	
	@Transactional(readOnly = true)
	public List<Country> getAllCountries() {
		return repo.findAll();
	}
}
