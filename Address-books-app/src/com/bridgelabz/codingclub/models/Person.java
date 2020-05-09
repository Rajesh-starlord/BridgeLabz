package com.bridgelabz.codingclub.models;
import java.util.*;

public class Person {
	private String id="";
	private String fname;
	private String lname;
	private String address;
	private int zip;

	public Person(String id,String fname, String lname, String address, int zip) {
		this.zip = zip;
		this.fname = fname;
		this.lname = lname;
		this.id = id;
		this.address = address;
	}

	public void setId(String id) {
		this.id = id;
	}
	public String getId() {
		return id;
	}

	public String getfName() {
		return fname;
	}

	public void setfName(String fname) {
		this.fname = fname;
	}
	public String getlName() {
		return lname;
	}

	public void setlName(String lname) {
		this.lname = lname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getZip() {
		return zip;
	}

	public void setAge(int zip) {
		this.zip = zip;
	}
	//@Override
	public static Comparator<Person> fNameComp = new Comparator<Person>() {
		public int compare(Person p1, Person p2) {
		   String fName1 = p1.getfName().toUpperCase();
		   String fName2 = p2.getfName().toUpperCase();
		   return fName1.compareTo(fName2);
	}};
	public static Comparator<Person> ZipComp= new Comparator<Person>() {
	  public int compare(Person p1, Person p2) {
		   int zip1 = p1.getZip();
		   int zip2 = p2.getZip();
		   return zip1-zip2;
	}};
	public static Comparator<Person> lNameComp = new Comparator<Person>() {
		public int compare(Person p1, Person p2) {
		   String lName1 = p1.getlName().toUpperCase();
		   String lName2 = p2.getlName().toUpperCase();
		   return lName1.compareTo(lName2);
	}};
	public static Comparator<Person> clearSort= new Comparator<Person>() {
		public int compare(Person p1, Person p2)  { 
			int fNameCompare = p1.getfName().compareTo(p2.getfName()); 
			int lNameCompare = p1.getlName().compareTo(p2.getlName());  
			if (fNameCompare == 0) { 
				if(lNameCompare == 0){
				    int zip1 = p1.getZip();
				    int zip2 = p2.getZip();
				    return zip1-zip2;
				}else{
					return lNameCompare; 	
				}
			} else { 
				return fNameCompare; 
			}
	}};
	//@Override
	public String toString() {
		return "Customer [id=" + id + ", fname=" + fname +", lname=" + lname+ ", address=" + address + ", zip=" + zip + "]";
	}
}
