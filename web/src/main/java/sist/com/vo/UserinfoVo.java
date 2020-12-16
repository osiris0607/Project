package sist.com.vo;

public class UserinfoVo {

	private int no;
	private String name;
	private String id;
	private String password;
	private String gender;
	private String birth;
	private String email;
	private String address;
	private String tel;
	private String cp;
	private int amount;
	private int point;
	private String regdate;
	private String mcode;
	public UserinfoVo() {
		super();
	}
	public UserinfoVo(int no, String name, String id, String password, String gender, String birth, String email,
			String address, String tel, String cp, int amount, int point, String regdate, String mcode) {
		super();
		this.no = no;
		this.name = name;
		this.id = id;
		this.password = password;
		this.gender = gender;
		this.birth = birth;
		this.email = email;
		this.address = address;
		this.tel = tel;
		this.cp = cp;
		this.amount = amount;
		this.point = point;
		this.regdate = regdate;
		this.mcode = mcode;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getCp() {
		return cp;
	}
	public void setCp(String cp) {
		this.cp = cp;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getMcode() {
		return mcode;
	}
	public void setMcode(String mcode) {
		this.mcode = mcode;
	}
	@Override
	public String toString() {
		return "UserinfoVo [no=" + no + ", name=" + name + ", id=" + id + ", password=" + password + ", gender="
				+ gender + ", birth=" + birth + ", email=" + email + ", address=" + address + ", tel=" + tel + ", cp="
				+ cp + ", amount=" + amount + ", point=" + point + ", regdate=" + regdate + ", mcode=" + mcode + "]";
	}

	
}
