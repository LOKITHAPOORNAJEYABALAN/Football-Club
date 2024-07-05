package com.model;

public class Register {
	String name,date,gender,contact,experiencelevel,position,email;

	
	

	public Register(String name, String date, String gender, String contact, String experiencelevel, String position,
			String email) {
		super();
		this.name = name;
		this.date = date;
		this.gender = gender;
		this.contact = contact;
		this.experiencelevel = experiencelevel;
		this.position = position;
		this.email = email;
	}
	public String getName() {
		return name;
	}



	public String getDate() {
		return date;
	}


	public String getGender() {
		return gender;
	}

	

	public String getContact() {
		return contact;
	}

	

	public String getExperiencelevel() {
		return experiencelevel;
	}

	

	public String getPosition() {
		return position;
	}

	

	public String getEmail() {
		return email;
	}


}
