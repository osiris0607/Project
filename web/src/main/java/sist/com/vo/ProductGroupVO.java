package sist.com.vo;

public class ProductGroupVO {

	private int prgroup_level;
	private String prgroup_name;
	private int prgroup_code;
	private int prgroup_pcode;

	public ProductGroupVO() {
		super();
	}

	public ProductGroupVO(int prgroup_level, String prgroup_name, int prgroup_code, int prgroup_pcode) {
		super();
		this.prgroup_level = prgroup_level;
		this.prgroup_name = prgroup_name;
		this.prgroup_code = prgroup_code;
		this.prgroup_pcode = prgroup_pcode;
	}

	public int getPrgroup_level() {
		return prgroup_level;
	}

	public void setPrgroup_level(int prgroup_level) {
		this.prgroup_level = prgroup_level;
	}

	public String getPrgroup_name() {
		return prgroup_name;
	}

	public void setPrgroup_name(String prgroup_name) {
		this.prgroup_name = prgroup_name;
	}

	public int getPrgroup_code() {
		return prgroup_code;
	}

	public void setPrgroup_code(int prgroup_code) {
		this.prgroup_code = prgroup_code;
	}

	public int getPrgroup_pcode() {
		return prgroup_pcode;
	}

	public void setPrgroup_pcode(int prgroup_pcode) {
		this.prgroup_pcode = prgroup_pcode;
	}

	@Override
	public String toString() {
		return "ProductGroupVO [prgroup_level=" + prgroup_level + ", prgroup_name=" + prgroup_name + ", prgroup_code="
				+ prgroup_code + ", prgroup_pcode=" + prgroup_pcode + "]";
	}

}
