package com.bridgelabz.codingclub.service;
import	com.bridgelabz.codingclub.models.*;
public interface Iserv {
	public void addData(Person P);
	public void readData();
	public void edit(String id);
	public void sortBy(String sortBy);
	public void deleteOne(String id);
	public void delete();
}
