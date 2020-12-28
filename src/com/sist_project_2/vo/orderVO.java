package com.sist_project_2.vo;

import com.sist_project_2.dao.DBConn;

public class orderVO extends DBConn{
	String mid, pid, o_pname, o_pinfo, o_pcolor, o_name, o_ph1, o_ph2, o_ph3, o_email1, o_email2, o_s_name, 
		o_s_addrnum, o_s_addr2, o_s_addr3, o_s_ph1, o_s_ph2, o_s_ph3, o_request;
	String o_ph, o_email, o_s_addr, o_s_ph;
	int o_pprice;
	
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getO_pname() {
		return o_pname;
	}
	public void setO_pname(String o_pname) {
		this.o_pname = o_pname;
	}
	public String getO_pinfo() {
		return o_pinfo;
	}
	public void setO_pinfo(String o_pinfo) {
		this.o_pinfo = o_pinfo;
	}
	public String getO_pcolor() {
		return o_pcolor;
	}
	public void setO_pcolor(String o_pcolor) {
		this.o_pcolor = o_pcolor;
	}
	public String getO_name() {
		return o_name;
	}
	public void setO_name(String o_name) {
		this.o_name = o_name;
	}
	public String getO_ph1() {
		return o_ph1;
	}
	public void setO_ph1(String o_ph1) {
		this.o_ph1 = o_ph1;
	}
	public String getO_ph2() {
		return o_ph2;
	}
	public void setO_ph2(String o_ph2) {
		this.o_ph2 = o_ph2;
	}
	public String getO_ph3() {
		return o_ph3;
	}
	public void setO_ph3(String o_ph3) {
		this.o_ph3 = o_ph3;
	}
	public String getO_email1() {
		return o_email1;
	}
	public void setO_email1(String o_email1) {
		this.o_email1 = o_email1;
	}
	public String getO_email2() {
		return o_email2;
	}
	public void setO_email2(String o_email2) {
		this.o_email2 = o_email2;
	}
	public String getO_s_name() {
		return o_s_name;
	}
	public void setO_s_name(String o_s_name) {
		this.o_s_name = o_s_name;
	}
	public String getO_s_addrnum() {
		return o_s_addrnum;
	}
	public void setO_s_addrnum(String o_s_addrnum) {
		this.o_s_addrnum = o_s_addrnum;
	}
	public String getO_s_addr2() {
		return o_s_addr2;
	}
	public void setO_s_addr2(String o_s_addr2) {
		this.o_s_addr2 = o_s_addr2;
	}
	public String getO_s_addr3() {
		return o_s_addr3;
	}
	public void setO_s_addr3(String o_s_addr3) {
		this.o_s_addr3 = o_s_addr3;
	}
	public String getO_s_ph1() {
		return o_s_ph1;
	}
	public void setO_s_ph1(String o_s_ph1) {
		this.o_s_ph1 = o_s_ph1;
	}
	public String getO_s_ph2() {
		return o_s_ph2;
	}
	public void setO_s_ph2(String o_s_ph2) {
		this.o_s_ph2 = o_s_ph2;
	}
	public String getO_s_ph3() {
		return o_s_ph3;
	}
	public void setO_s_ph3(String o_s_ph3) {
		this.o_s_ph3 = o_s_ph3;
	}
	public String getO_request() {
		return o_request;
	}
	public void setO_request(String o_request) {
		this.o_request = o_request;
	}
	public String getO_ph() {
		String str = "";
		if(o_ph1 != null) {
			str = o_ph1 + "-" + o_ph2 + "-" + o_ph3;
		} else {
			str = o_ph;
		}
		return str;
	}
	public void setO_ph(String o_ph) {
		this.o_ph = o_ph;
	}
	public String getO_email() {
		String str = "";
		if(o_email1 != null) {
			str = o_email1 + o_email2;
		} else {
			str = o_email;
		}
		return str;
	}
	public void setO_email(String o_email) {
		this.o_email = o_email;
	}
	public String getO_s_addr() {
		String str = "";
		if(o_s_addr2 != null) {
			str = o_s_addr2 + "," + o_s_addr3;
		} else {
			str = o_s_addr;
		}
		return str;
	}
	public void setO_s_addr(String o_s_addr) {
		this.o_s_addr = o_s_addr;
	}
	public String getO_s_ph() {
		String str = "";
		if(o_s_ph1 != null) {
			str = o_s_ph1 + "-" + o_s_ph2 + "-" + o_s_ph3;
		} else {
			str = o_s_ph;
		}
		return str;
	}
	public void setO_s_ph(String o_s_ph) {
		this.o_s_ph = o_s_ph;
	}
	public int getO_pprice() {
		return o_pprice;
	}
	public void setO_pprice(int o_pprice) {
		this.o_pprice = o_pprice;
	}
	
	
}

