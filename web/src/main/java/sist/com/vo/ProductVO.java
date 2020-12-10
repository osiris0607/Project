package sist.com.vo;

public class ProductVO {
	private SellerinfoVO sellerinfoVO; // (조인용) 상품등록 할 판매자번호 가져올 것
	private ProductGroupVO productGroupVO; // (조인용) 상품그룹 가져올 것
	// sell_qty (조인용) 수량??

	private int productNo;
	private String productTitle;
	private String productSubtitle;
	private int productPrice;
	private String productContents;
	private String productImg;
	private String productState;
	private String productRegdate;

	public ProductVO() {
		super();
	}

	public ProductVO(int productNo, String productTitle, String productSubtitle, int productPrice,
			String productContents, String productImg, String productState, String productRegdate) {
		super();
		this.productNo = productNo;
		this.productTitle = productTitle;
		this.productSubtitle = productSubtitle;
		this.productPrice = productPrice;
		this.productContents = productContents;
		this.productImg = productImg;
		this.productState = productState;
		this.productRegdate = productRegdate;
	}


	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getProductTitle() {
		return productTitle;
	}

	public void setProductTitle(String productTitle) {
		this.productTitle = productTitle;
	}

	public String getProductSubtitle() {
		return productSubtitle;
	}

	public void setProductSubtitle(String productSubtitle) {
		this.productSubtitle = productSubtitle;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductContents() {
		return productContents;
	}

	public void setProductContents(String productContents) {
		this.productContents = productContents;
	}

	public String getProductImg() {
		return productImg;
	}

	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}

	public String getProductState() {
		return productState;
	}

	public void setProductState(String productState) {
		this.productState = productState;
	}

	public String getProductRegdate() {
		return productRegdate;
	}

	public void setProductRegdate(String productRegdate) {
		this.productRegdate = productRegdate;
	}

	@Override
	public String toString() {
		return "ProductVO [productNo=" + productNo + ", productTitle=" + productTitle
				+ ", productSubtitle=" + productSubtitle + ", productPrice=" + productPrice + ", productContents="
				+ productContents + ", productImg=" + productImg + ", productState=" + productState
				+ ", productRegdate=" + productRegdate + "]";
	}

}
