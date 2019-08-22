package com.nirman.contractor;


public class ContactorModel {
	private String name;
	private String email;
	private String phone;
	private String Qualification;
	private String city;
	private String photo;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getQualification() {
		return Qualification;
	}
	public void setQualification(String qualification) {
		Qualification = qualification;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	@Override
	public String toString() {
		return "ContractorModel [name=" + name + ", email=" + email + ", phone=" + phone + ", Qualification="
				+ Qualification + ", city=" + city + ", photo=" + photo + "]";
	}
	
}
