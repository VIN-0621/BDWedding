package cn.edu.fzu.sm.bdwedding.photographer;

public class PhotoGrapher {
	private int pId;
	private String pName;
	private String pSortname;
	private String pSortaddress;
	private String pNumber;
	private String pState;
	private String pPay;
	private String pIncome;
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpSortname() {
		return pSortname;
	}
	public void setpSortname(String pSortname) {
		this.pSortname = pSortname;
	}
	public String getpSortaddress() {
		return pSortaddress;
	}
	public void setpSortaddress(String pSortaddress) {
		this.pSortaddress = pSortaddress;
	}
	public String getpNumber() {
		return pNumber;
	}
	public void setpNumber(String pNumber) {
		this.pNumber = pNumber;
	}	
	public String getpState() {
		return pState;
	}
	public void setpState(String pState) {
		this.pState = pState;
	}
	public String getpPay() {
		return pPay;
	}
	public void setpPay(String pPay) {
		this.pPay = pPay;
	}
	public String getpIncome() {
		return pIncome;
	}
	public void setpIncome(String pIncome) {
		this.pIncome = pIncome;
	}
	@Override
	public String toString() {
		return "PhotoGrapher [pId=" + pId + ", pName=" + pName + ", pSortname="
				+ pSortname + ", pSortaddress=" + pSortaddress + ", pNumber="
				+ pNumber + ", pState=" + pState + ", pPay=" + pPay
				+ ", pIncome=" + pIncome + "]";
	}
	
	
}
