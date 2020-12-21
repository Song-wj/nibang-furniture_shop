package com.sist_project_2.vo;

public class noticeVO {
	String nid, ntitle,ncontent, nviews, ndate ,nfile,nsfile;

	int rno;

	public String getNfile() {
		return nfile;
	}
	
	public void setNfile(String nfile) {
		this.nfile = nfile;
	}
	
	public String getNsfile() {
		return nsfile;
	}
	
	public void setNsfile(String nsfile) {
		this.nsfile = nsfile;
	}
	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getNid() {
		return nid;
	}

	public void setNid(String nid) {
		this.nid = nid;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNcontent() {
		return ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	public String getNviews() {
		return nviews;
	}

	public void setNviews(String nviews) {
		this.nviews = nviews;
	}

	public String getNdate() {
		return ndate;
	}

	public void setNdate(String ndate) {
		this.ndate = ndate;
	}
}
