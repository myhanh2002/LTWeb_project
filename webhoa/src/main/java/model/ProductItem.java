package model;


import java.text.NumberFormat;

public class ProductItem {

	private Product product;
	private int quantity;

	public ProductItem() {

	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double total() {
		double total = product.getPriceNew() * quantity;
		return total;
	}

	@Override
	public String toString() {
		return "ProductItem [product=" + product + ", quantity=" + quantity + "]";
	}

	public String getTotalCurrencyFormat() {
		NumberFormat currency = NumberFormat.getCurrencyInstance();
		return currency.format(this.total());
	}
}
