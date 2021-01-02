package com.sist_project_2.vo;

public class cartVO extends productVO{
   String c_date, mid;
   int c_qty;
   
   
   public int getC_qty() {
      return c_qty;
   }

   public void setC_qty(int c_qty) {
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
   
}