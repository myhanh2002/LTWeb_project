package model;

import java.io.Serializable;
import java.util.ArrayList;

public class Cart implements Serializable{

	private ArrayList<ProductItem> items;
	
	public Cart() {
		items = new ArrayList<ProductItem>();
	}
	
	public ArrayList<ProductItem> getItems(){
		return items;
	}
	
	
	public int getCount() {
		return items.size();
	}
	
	public void addItem(ProductItem item) {
		String pId = item.getProduct().getpId();
		int quantity = item.getQuantity();
		for (int i = 0; i < items.size(); i++) {
			ProductItem productItem = items.get(i);
			if (productItem.getProduct().getpId().equals(pId)) {
				productItem.setQuantity(quantity);
				return;
			}
		}
		items.add(item);
	}
	
	public void removeItem(ProductItem item) {
		String pId = item.getProduct().getpId();
		for (int i = 0; i < items.size(); i++) {
			ProductItem productItem = items.get(i);
			if (productItem.getProduct().getpId().equals(pId)) {
				items.remove(i);
				return;
			}
		}
	}
}
