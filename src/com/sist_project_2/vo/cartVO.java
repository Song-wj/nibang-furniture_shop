package com.sist_project_2.vo;

public class cartVO extends orderVO{
	String pid, pname , pinfo ,color, simg1, pprice;
	/* int price; */

	String c_date, mid, c_qty;

	

	public String getC_qty() {
		return c_qty;
	}

	public void setC_qty(String c_qty) {
		this.c_qty = c_qty;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getC_date() {
		return c_date;
	}

	public void setC_date(String c_date) {
		this.c_date = c_date;
	}
	
	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPinfo() {
		return pinfo;
	}

	public void setPinfo(String pinfo) {
		this.pinfo = pinfo;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getSimg1() {
		return simg1;
	}

	public void setSimg1(String simg1) {
		this.simg1 = simg1;
	}

	public String getPprice() {
		return pprice;
	}

	public void setPprice(String pprice) {
		this.pprice = pprice;
	}

	/*
	 * public int getPrice() { return price; }
	 * 
	 * public void setPrice(int price) { this.price = price; }
	 */
	

}