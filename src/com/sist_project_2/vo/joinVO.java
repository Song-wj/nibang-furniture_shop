package com.sist_project_2.vo;

public class joinVO {
	String email1, email2, pass, name, birth1, birth2, birth3, gender, ph1, ph2, ph3, addr_num, addr2, addr3;
	String email, birth, ph, addr;

	public String getEmail() {
		String str = "";
		if (email1 != null) {
			str = email1 + email2;
		} else
			str = email;
		return str;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPh() {
		String phone = "";
		if (ph1 != null) {
			phone = ph1 + "-" + ph2 + "-" + ph3;
		} else
			phone = ph;
		return phone;
	}

	public void setPh(String ph) {
		this.ph = ph;
	}

	public String getAddr() {
		String address = "";
		if (addr2 != null) {
			address = addr2 + "," + addr3;
		} else
			address = addr;
		return address;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getBirth() {
		String bir = "";
		if (birth1 != null) {
			bir = birth1 + "/" + birth2 + "/" + birth3;
		} else
			bir = birth;
		return bir;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth1() {
		return birth1;
	}

	public void setBirth1(String birth1) {
		this.birth1 = birth1;
	}

	public String getBirth2() {
		return birth2;
	}

	public void setBirth2(String birth2) {
		this.birth2 = birth2;
	}

	public String getBirth3() {
		return birth3;
	}

	public void setBirth3(String birth3) {
		this.birth3 = birth3;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPh1() {
		return ph1;
	}

	public void setPh1(String ph1) {
		this.ph1 = ph1;
	}

	public String getPh2() {
		return ph2;
	}

	public void setPh2(String ph2) {
		this.ph2 = ph2;
	}

	public String getPh3() {
		return ph3;
	}

	public void setPh3(String ph3) {
		this.ph3 = ph3;
	}

	public String getAddr_num() {
		return addr_num;
	}

	public void setAddr_num(String addr_num) {
		this.addr_num = addr_num;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getAddr3() {
		return addr3;
	}

	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}

}
