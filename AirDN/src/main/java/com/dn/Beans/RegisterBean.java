package com.dn.Beans;

public class RegisterBean {

	private String lastName;
	private String firstName;
	private long phoneNum;
	
	
	public RegisterBean(String lastName, String firstName, long phoneNum) {
		super();
		this.lastName = lastName;
		this.firstName = firstName;
		this.phoneNum = phoneNum;
	}
	
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public long getPhone() {
		return phoneNum;
	}
	public void setPhone(long num) {
		this.phoneNum = num;
	}
	
}
