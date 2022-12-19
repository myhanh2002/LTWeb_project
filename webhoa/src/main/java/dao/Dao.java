package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Category;
import model.Product;
import model.User;

public class Dao {
	Connection conn ;
	PreparedStatement ps;
	ResultSet rs;

	// lấy toàn bộ sản phẩm
	public List<Product> getAllProduct() {
		List<Product> list = new ArrayList<>();
		String query = "SELECT * FROM Product;";
		try {
			conn = Connect.getConnect(); // mở kết nối với sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7)));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	// lấy sản phẩm theo mã sản phẩm
	public Product getProductById(String pid) {
		String query = "SELECT * FROM Product WHERE pId=?;";
		try {
			conn = Connect.getConnect(); // mở kết nối với sql
			ps = conn.prepareStatement(query);
			ps.setString(1, pid);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Product(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// lấy sản phẩm theo loại sản phẩm
	public List<Product> getProductByCategory(String cid) {
		List<Product> list = new ArrayList<>();
		String query = "SELECT * FROM Product WHERE cateId=?;";
		try {
			conn = Connect.getConnect(); // mở kết nối với sql
			ps = conn.prepareStatement(query);
			ps.setString(1, cid);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7)));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	// lấy toàn bộ loại sản phẩm
	public List<Category> getAllCategory() {
		List<Category> listC = new ArrayList<>();
		String query = "SELECT * FROM Category;";
		try {
			conn = Connect.getConnect(); // mở kết nối với sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listC.add(new Category(rs.getString(1), rs.getString(2)));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listC;
	}
	
	// đăng nhập
	public User checkLogin(String userName, String password) {
		String query = "select * from [User] where userName=? and password=?";
		try {
			conn = Connect.getConnect(); // mở kết nối với sql
			ps = conn.prepareStatement(query);
			ps.setString(1, userName); // đẩy userName vào dấu ? thứ nhất
			ps.setString(2, password); // đẩy password vào dấu ? thứ hai
			rs = ps.executeQuery();
			while (rs.next()) {
				return new User(rs.getString(1), 
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getString(5), 
						rs.getString(6),
						rs.getString(7),
						rs.getInt(8)
						);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// kiểm tra một tài khoản đã tồn tại hay chưa
	public User checkUserExist(String userName) {
		String query = ("select * from [User] where userName=?");
		try {
			conn = Connect.getConnect(); // mở kết nối với sql
			ps = conn.prepareStatement(query);
			ps.setString(1, userName); // đẩy username vào dấu ? thứ nhất
			rs = ps.executeQuery();
			while (rs.next()) {
				return new User(rs.getString(1), 
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getString(5), 
						rs.getString(6),
						rs.getString(7),
						rs.getInt(8)
						);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// đăng nhập
	public void register(String userName, String password, String repassword, String email, String phoneNumber,
			String name, String address) throws ClassNotFoundException {
		String query = "INSERT INTO [User] (userName, password, repassword, email, phoneNumber, name, address, isAdmin)" 
				+ "values(?,?,?,?,?,?,?,0);";
		try {
			conn = Connect.getConnect(); // mở kết nối với sql
			ps = conn.prepareStatement(query);
			ps.setString(1, userName); // đẩy userName vào dấu ? thứ nhất
			ps.setString(2, password); // đẩy password vào dấu ? thứ hai
			ps.setString(3, repassword);
			ps.setString(4, email);
			ps.setString(5, phoneNumber);
			ps.setString(6, name);
			ps.setString(7, address);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// lấy thông tin khách hàng theo tên tài khoản
	public User getUserByUsername(String userName) {
		String query = "SELECT * FROM [User] WHERE userName=?;";
		try {
			conn = Connect.getConnect(); // mở kết nối với sql
			ps = conn.prepareStatement(query);
			ps.setString(1, userName);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new User(rs.getString(1), 
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getString(5), 
						rs.getString(6),
						rs.getString(7),
						rs.getInt(8)
						);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	// khách hàng thay đổi thông tin đã đăng ký
	public void editUser(String userName, String password, String repassword, String email, String phoneNumber, String name, String address) {
		String query = "UPDATE User SET userName=?, password=?, repassword=?, email=?, phoneNumber=?, name=?, address=? WHERE userName=?;";
		try {
			conn = Connect.getConnect();
			ps = conn.prepareStatement(query);
			ps.setString(1, userName);
			ps.setString(2, password);
			ps.setString(3, repassword);
			ps.setString(4, email);
			ps.setString(5, phoneNumber);
			ps.setString(6, name);
			ps.setString(7, address);
			ps.setString(8, userName);
			ps.executeUpdate();
		} catch (Exception e) {
			e.getStackTrace();
		}
	}
	

	// tìm kiếm theo tên sản phẩm
	public List<Product> searchByName(String txtSearch) {
		List<Product> list = new ArrayList<>();
		String query = "SELECT * FROM Product WHERE pName LIKE ?;";
		try {
			new Connect();
			conn = Connect.getConnect(); // mở kết nối với sql
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + txtSearch + "%"); 
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7)));
			}
		}
		catch(Exception e){
			e.getStackTrace();
		}
		return list;
	}
	
	// xóa sản phẩm
	public void deleteProduct(String pid) {
		String query = "DELETE FROM Product WHERE pId=?;";
		try {
			conn = Connect.getConnect();
			ps = conn.prepareStatement(query);
			ps.setString(1, pid);
			ps.executeUpdate();
		} catch (Exception e) {
			e.getStackTrace();
		}
	}
	
	// thêm sản phẩm
	public void addProduct(String id, String name, String photo, String priceOld, String priceNew, String des, String cate) {
		String query = "INSERT INTO Product (pId, pName, priceNew, priceOld, pDescription, cateId,  photo) VALUES (?,?,?,?,?,?,?)";
		try {
			conn = Connect.getConnect();
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, priceNew);
			ps.setString(4, priceOld);
			ps.setString(5, des);
			ps.setString(6, cate);
			ps.setString(7, photo);
			ps.executeUpdate();
		} catch (Exception e) {
			e.getStackTrace();
		}
	}
	
	// chỉnh sửa thông tin sản phẩm
	public void editProduct(String id, String name, String photo, String priceOld, String priceNew, String des, String cate) {
		String query = "UPDATE Product SET pName=?, priceNew=?, priceOld=?, pDescription=?, cateId=?, photo=? WHERE pId=?;";
		try {
			conn = Connect.getConnect();
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, priceNew);
			ps.setString(3, priceOld);
			ps.setString(4, des);
			ps.setString(5, cate);
			ps.setString(6, photo);
			ps.setString(7, id);
			ps.executeUpdate();
		} catch (Exception e) {
			e.getStackTrace();
		}
	}
	
	public static void main(String[] args) {
		Dao dao = new Dao();
		
		List<Product> list = dao.getAllProduct();
		for (Product p : list) {
			System.out.println(p);
		}
		
		List<Category> listC = dao.getAllCategory();
		for (Category ca : listC) {
			System.out.println(ca);
		}
	}

}
