package com.sist_project_2.vo;

public class withdrawalVO {
	String did, d_content, d_reason;
	String[] reason;
	int rno;
	
	public String getDid() {
		return did;
	}
	public void setDid(String did) {
		this.did = did;
	}
	public String getD_content() {
		return d_content;
	}
	public void setD_content(String d_content) {
		this.d_content = d_content;
	}
	public String getD_reason() {
		String str = "";
		if (reason != null) {
			str = String.join(",", reason);
		} else {
			str = d_reason;
		}
		return str;
	}
	public void setD_reason(String d_reason) {
		this.d_reason = d_reason;
	}
	public String[] getReason() {
		return reason;
	}
	public void setReason(String[] reason) {
		this.reason = reason;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	
	
}
