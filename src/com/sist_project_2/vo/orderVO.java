package com.sist_project_2.vo;

public class orderVO {
   String oid, mid, pid, rname, raddrnum, raddr, raddr2, raddr3, rph, rph1, rph2, rph3, rrequest, review_chk, total, rdate, order_chk;
int pcnt;

   String name, hp, simg, pname, pinfo, color, price;

      
   public String getOrder_chk() {
	   return order_chk;
   }
   
   public void setOrder_chk(String order_chk) {
	   this.order_chk = order_chk;
   }
   
   public String getRdate() {
      return rdate;
   }

   public void setRdate(String rdate) {
      this.rdate = rdate;
   }

   public String getOid() {
      return oid;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getHp() {
      return hp;
   }

   public void setHp(String hp) {
      this.hp = hp;
   }

   public String getSimg() {
      return simg;
   }

   public void setSimg(String simg) {
      this.simg = simg;
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

   public String getPrice() {
      return price;
   }

   public void setPrice(String price) {
      this.price = price;
   }

   public void setOid(String oid) {
      this.oid = oid;
   }

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

   public String getRname() {
      return rname;
   }

   public void setRname(String rname) {
      this.rname = rname;
   }

   public String getRaddrnum() {
      return raddrnum;
   }

   public void setRaddrnum(String raddrnum) {
      this.raddrnum = raddrnum;
   }

   public String getRaddr() {
      String str = "";
      if (raddr2 != null) {
         str = raddr2 + "," + raddr3;
      } else {
         str = raddr;
      }
      return str;
   }

   public void setRaddr(String raddr) {
      this.raddr = raddr;
   }

   public String getRaddr2() {
      return raddr2;
   }

   public void setRaddr2(String raddr2) {
      this.raddr2 = raddr2;
   }

   public String getRaddr3() {
      return raddr3;
   }

   public void setRaddr3(String raddr3) {
      this.raddr3 = raddr3;
   }

   public String getRph() {
      String str = "";
      if (rph1 != null) {
         str = rph1 + "-" + rph2 + "-" + rph3;
      } else {
         str = rph;
      }
      return str;
   }

   public void setRph(String rph) {
      this.rph = rph;
   }

   public String getRph1() {
      return rph1;
   }

   public void setRph1(String rph1) {
      this.rph1 = rph1;
   }

   public String getRph2() {
      return rph2;
   }

   public void setRph2(String rph2) {
      this.rph2 = rph2;
   }

   public String getRph3() {
      return rph3;
   }

   public void setRph3(String rph3) {
      this.rph3 = rph3;
   }

   public String getRrequest() {
      return rrequest;
   }

   public void setRrequest(String rrequest) {
      this.rrequest = rrequest;
   }

   public String getReview_chk() {
      return review_chk;
   }

   public void setReview_chk(String review_chk) {
      this.review_chk = review_chk;
   }

   public int getPcnt() {
      return pcnt;
   }

   public void setPcnt(int pcnt) {
      this.pcnt = pcnt;
   }

   public String getTotal() {
      return total;
   }

   public void setTotal(String total) {
      this.total = total;
   }

}