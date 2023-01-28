package com.sportyshoes.api;

import javax.validation.constraints.AssertTrue;

public class User {
	private int id;
	private String name;
	private String password;
	
	@AssertTrue(message = "Invalid Credentials")
	private boolean check;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isCheck() {
		return check;
	}

	public void setCheck(boolean check) {
		this.check = check;
	}

	

}
