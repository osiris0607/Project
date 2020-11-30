package sist.com.vo;

public class SellerinfoVO {
	private int no;
	private String id;
	private String password;
	private String name;
	private String num;
	private String rep;
	private String email;
	private String tel;
	private String cp;
	private int amount;
	private String regdate;
	
	
	public SellerinfoVO(int no, String id, String password, String name, String num, String rep, String email,
			String tel, String cp, int amount, String regdate) {
		super();
		this.no = no;
		this.id = id;
		this.password = password;
		this.name = name;
		this.num = num;
		this.rep = rep;
		this.email = email;
		this.tel = tel;
		this.cp = cp;
		this.amount = amount;
		this.regdate = regdate;
	}
	public SellerinfoVO() {
		super();
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getRep() {
		return rep;
	}
	public void setRep(String rep) {
		this.rep = rep;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "SellerinfoVO [no=" + no + ", id=" + id + ", password=" + password + ", name=" + name + ", num=" + num
				+ ", rep=" + rep + ", email=" + email + ", tel=" + tel + ", cp=" + cp + ", amount=" + amount
				+ ", regdate=" + regdate + "]";
	}
	
	
	
	
	
}
