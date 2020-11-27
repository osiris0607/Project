package sist.com.vo;

public class UserinfoVo {

	private int u_no;
	private String u_name;
	private String u_id;
	private String u_password;
	private String u_gender;
	private String u_birth;
	private String u_email;
	private String u_address;
	private String u_tel;
	private String u_cp;
	private int u_amount;
	private int u_point;
	private String u_regdate;
	private String m_code;

	public UserinfoVo() {
		super();
	}

	public UserinfoVo(int u_no, String u_name, String u_id, String u_password, String u_gender, String u_birth,
			String u_email, String u_address, String u_tel, String u_cp, int u_amount, int u_point, String u_regdate,
			String m_code) {
		super();
		this.u_no = u_no;
		this.u_name = u_name;
		this.u_id = u_id;
		this.u_password = u_password;
		this.u_gender = u_gender;
		this.u_birth = u_birth;
		this.u_email = u_email;
		this.u_address = u_address;
		this.u_tel = u_tel;
		this.u_cp = u_cp;
		this.u_amount = u_amount;
		this.u_point = u_point;
		this.u_regdate = u_regdate;
		this.m_code = m_code;
	}

	public int getU_no() {
		return u_no;
	}

	public void setU_no(int u_no) {
		this.u_no = u_no;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getU_password() {
		return u_password;
	}

	public void setU_password(String u_password) {
		this.u_password = u_password;
	}

	public String getU_gender() {
		return u_gender;
	}

	public void setU_gender(String u_gender) {
		this.u_gender = u_gender;
	}

	public String getU_birth() {
		return u_birth;
	}

	public void setU_birth(String u_birth) {
		this.u_birth = u_birth;
	}

	public String getU_email() {
		return u_email;
	}

	public void setU_email(String u_email) {
		this.u_email = u_email;
	}

	public String getU_address() {
		return u_address;
	}

	public void setU_address(String u_address) {
		this.u_address = u_address;
	}

	public String getU_tel() {
		return u_tel;
	}

	public void setU_tel(String u_tel) {
		this.u_tel = u_tel;
	}

	public String getU_cp() {
		return u_cp;
	}

	public void setU_cp(String u_cp) {
		this.u_cp = u_cp;
	}

	public int getU_amount() {
		return u_amount;
	}

	public void setU_amount(int u_amount) {
		this.u_amount = u_amount;
	}

	public int getU_point() {
		return u_point;
	}

	public void setU_point(int u_point) {
		this.u_point = u_point;
	}

	public String getU_regdate() {
		return u_regdate;
	}

	public void setU_regdate(String u_regdate) {
		this.u_regdate = u_regdate;
	}

	public String getM_code() {
		return m_code;
	}

	public void setM_code(String m_code) {
		this.m_code = m_code;
	}

	@Override
	public String toString() {
		return "UserinfoVo [u_no=" + u_no + ", u_name=" + u_name + ", u_id=" + u_id + ", u_password=" + u_password
				+ ", u_gender=" + u_gender + ", u_birth=" + u_birth + ", u_email=" + u_email + ", u_address="
				+ u_address + ", u_tel=" + u_tel + ", u_cp=" + u_cp + ", u_amount=" + u_amount + ", u_point=" + u_point
				+ ", u_regdate=" + u_regdate + ", m_code=" + m_code + "]";
	}

}
