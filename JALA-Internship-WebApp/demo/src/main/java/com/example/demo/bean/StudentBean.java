package com.example.demo.bean;

import java.time.LocalDate;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

public class StudentBean {

	// Restriction like mandatory field etc., are achieved using NotEmpty annotation
	// to avoid empty values.
	private int studentId;
//	@NotEmpty(message = "This is  required field")
	private String firstName;
	@NotEmpty(message = "This is  required field")
	private String lastName;
	@Size(min = 10, max = 10, message = "Enter valid mobile number")
	private String mobileNumber;
	@NotEmpty(message = "This is  required field")
	private String emailId;
	@NotEmpty(message = "This is  required field")
	private String gender;
	@NotNull(message = "This is  required field")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate date;
	@NotEmpty(message = "This is  required field")
	private String qualification;
	@NotEmpty(message = "This is  required field")
	private String skills;
	@NotEmpty(message = "This is  required field")
	private byte[] image;
	private String description;
	@NotEmpty(message = "This is  required field")
	private String password;
	@NotNull(message = "This is  required field")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate activeTill;

	public LocalDate getActiveTill() {
		return activeTill;
	}

	public void setActiveTill(LocalDate activeTill) {
		this.activeTill = activeTill;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
