package com.example.demo.bean;

import javax.validation.constraints.NotEmpty;

public class JobSeekersBean {
	
	// NotEmpty annotation is used to avoid empty value while submitting form.
	@NotEmpty
	private String phoneNumber;
	@NotEmpty
	private String password;

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
