package com.shopping.beans;

public class OrderBean {

	
	private String pid;
	private String mode;
	private String cid;
	private String quant;
	
	public OrderBean(String pid, String mode,String cid,String quant) {
		super();
		this.pid = pid;
		this.mode = mode;
		this.cid=cid;
		this.quant=quant;
	}
	public String getQuant() {
		return quant;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}

}
