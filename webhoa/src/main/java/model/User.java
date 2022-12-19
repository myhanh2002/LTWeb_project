package model;

public class User {

	private String userName;
	private String password;
	private String repassword;
	private String email;
	private String phoneNumber;
	private String name;
	private String address;
	private int isAdmin;

	public User() {

	}

	public User(String userName, String password, String repassword, String email, String phoneNumber, String name,
			String address, int isAdmin) {
		this.userName = userName;
		this.password = password;
		this.repassword = repassword;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.name = name;
		this.address = address;
		this.isAdmin = isAdmin;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}

	@Override
	public String toString() {
		return "User [userName=" + userName + ", password=" + password + ", repassword=" + repassword + ", email="
				+ email + ", phoneNumber=" + phoneNumber + ", name=" + name + ", address=" + address + ", isAdmin="
				+ isAdmin + "]";
	}
}
