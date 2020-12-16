package sist.com.vo;

public class SellerinfoVO {
	private int no;
	private String id;
	private String password;
	private String cname;
	private String cnum;
	private String rep;
	private String email;
	private String tel;
	private String cp;
	private int amount;
	private String regdate;

	public SellerinfoVO() {
		super();
	}

	public SellerinfoVO(int no, String id, String password, String cname, String cnum, String rep, String email,
			String tel, String cp, int amount, String regdate) {
		super();
		this.no = no;
		this.id = id;
		this.password = password;
		this.cname = cname;
		this.cnum = cnum;
		this.rep = rep;
		this.email = email;
		this.tel = tel;
		this.cp = cp;
		this.amount = amount;
		this.regdate = regdate;
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

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCnum() {
		return cnum;
	}

	public void setCnum(String cnum) {
		this.cnum = cnum;
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
		return "SellerinfoVO [no=" + no + ", id=" + id + ", password=" + password + ", cname=" + cname + ", cnum="
				+ cnum + ", rep=" + rep + ", email=" + email + ", tel=" + tel + ", cp=" + cp + ", amount=" + amount
				+ ", regdate=" + regdate + "]";
	}

}
