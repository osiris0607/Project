package sist.com.vo;

public class SellerinfoVO {
	private int s_no;
	private String s_id;
	private String s_password;
	private String s_cname;
	private String s_cnum;
	private String s_rep;
	private String s_email;
	private String s_tel;
	private String s_cp;
	private int s_amount;
	private String s_regdate;
	
	
	public SellerinfoVO() {
		super();
	}
	public SellerinfoVO(int s_no, String s_id, String s_password, String s_cname, String s_cnum, String s_rep,
			String s_email, String s_tel, String s_cp, int s_amount, String s_regdate) {
		super();
		this.s_no = s_no;
		this.s_id = s_id;
		this.s_password = s_password;
		this.s_cname = s_cname;
		this.s_cnum = s_cnum;
		this.s_rep = s_rep;
		this.s_email = s_email;
		this.s_tel = s_tel;
		this.s_cp = s_cp;
		this.s_amount = s_amount;
		this.s_regdate = s_regdate;
	}
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public String getS_password() {
		return s_password;
	}
	public void setS_password(String s_password) {
		this.s_password = s_password;
	}
	public String getS_cname() {
		return s_cname;
	}
	public void setS_cname(String s_cname) {
		this.s_cname = s_cname;
	}
	public String getS_cnum() {
		return s_cnum;
	}
	public void setS_cnum(String s_cnum) {
		this.s_cnum = s_cnum;
	}
	public String getS_rep() {
		return s_rep;
	}
	public void setS_rep(String s_rep) {
		this.s_rep = s_rep;
	}
	public String getS_email() {
		return s_email;
	}
	public void setS_email(String s_email) {
		this.s_email = s_email;
	}
	public String getS_tel() {
		return s_tel;
	}
	public void setS_tel(String s_tel) {
		this.s_tel = s_tel;
	}
	public String getS_cp() {
		return s_cp;
	}
	public void setS_cp(String s_cp) {
		this.s_cp = s_cp;
	}
	public int getS_amount() {
		return s_amount;
	}
	public void setS_amount(int s_amount) {
		this.s_amount = s_amount;
	}
	public String getS_regdate() {
		return s_regdate;
	}
	public void setS_regdate(String s_regdate) {
		this.s_regdate = s_regdate;
	}
	
	@Override
	public String toString() {
		return "SellerinfoVO [s_no=" + s_no + ", s_id=" + s_id + ", s_password=" + s_password + ", s_cname=" + s_cname
				+ ", s_cnum=" + s_cnum + ", s_rep=" + s_rep + ", s_email=" + s_email + ", s_tel=" + s_tel + ", s_cp="
				+ s_cp + ", s_amount=" + s_amount + ", s_regdate=" + s_regdate + "]";
	}
}
