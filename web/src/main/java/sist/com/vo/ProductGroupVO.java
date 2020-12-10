package sist.com.vo;

public class ProductGroupVO {

	private int prgroupLevel;
	private String prgroupName;
	private int prgroupCode;
	private int prgroupPcode;

	public ProductGroupVO() {
		super();
	}

	public ProductGroupVO(int prgroupLevel, String prgroupName, int prgroupCode, int prgroupPcode) {
		super();
		this.prgroupLevel = prgroupLevel;
		this.prgroupName = prgroupName;
		this.prgroupCode = prgroupCode;
		this.prgroupPcode = prgroupPcode;
	}

	public int getPrgroupLevel() {
		return prgroupLevel;
	}

	public void setPrgroupLevel(int prgroupLevel) {
		this.prgroupLevel = prgroupLevel;
	}

	public String getPrgroupName() {
		return prgroupName;
	}

	public void setPrgroupName(String prgroupName) {
		this.prgroupName = prgroupName;
	}

	public int getPrgroupCode() {
		return prgroupCode;
	}

	public void setPrgroupCode(int prgroupCode) {
		this.prgroupCode = prgroupCode;
	}

	public int getPrgroupPcode() {
		return prgroupPcode;
	}

	public void setPrgroupPcode(int prgroupPcode) {
		this.prgroupPcode = prgroupPcode;
	}

	@Override
	public String toString() {
		return "ProductGroupVO [prgroupLevel=" + prgroupLevel + ", prgroupName=" + prgroupName + ", prgroupCode="
				+ prgroupCode + ", prgroupPcode=" + prgroupPcode + "]";
	}

}
