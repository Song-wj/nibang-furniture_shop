package com.sist_project_2.vo;

public class productVO {
	String pid, pname , pinfo ,pkind, color, img1, img2,simg1,simg2 ,pdate , pprice;
	int price;
    
	public String getPprice() {
		return pprice;
	}
	
	public void setPprice(String pprice) {
		this.pprice = pprice;
	}
	public String getPkind() {
		return pkind;
	}
	
	public void setPkind(String pkind) {
		this.pkind = pkind;
	}
    
	public String getPinfo() {
		return pinfo;
	}
	
	public void setPinfo(String pinfo) {
		this.pinfo = pinfo;
	}
    
	public String getSimg1() {
		return simg1;
	}
	
	public void setSimg1(String simg1) {
		this.simg1 = simg1;
	}
	
	public String getSimg2() {
		return simg2;
	}
	
	public void setSimg2(String simg2) {
		this.simg2 = simg2;
	}
	
	public String getPdate() {
		return pdate;
	}
	
	public void setPdate(String pdate) {
		this.pdate = pdate;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}
}
