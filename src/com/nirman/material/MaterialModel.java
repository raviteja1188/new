package com.nirman.material;


public class MaterialModel {
	private int id;
	private String category;
	private String quantity;
	private String image;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "MaterialModel [id=" + id + ", category=" + category + ", quantity=" + quantity + ", image=" + image
				+ "]";
	}
	
}
