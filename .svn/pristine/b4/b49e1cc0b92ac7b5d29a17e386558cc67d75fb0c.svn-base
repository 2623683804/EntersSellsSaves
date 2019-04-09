package com.neusoft.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Stock {

	private Integer kcid;
	private Integer amount;
	private String comname;
	private Integer inventory;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date cgdate;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date salesdate;
	private Integer cgprice;
	private Integer salesprice;
		
	public Stock() {
		super();
	}

	public Stock(Integer kcid, Integer amount, String comname,
			Integer inventory, Date cgdate, Date salesdate, Integer cgprice,
			Integer salesprice) {
		super();
		this.kcid = kcid;
		this.amount = amount;
		this.comname = comname;
		this.inventory = inventory;
		this.cgdate = cgdate;
		this.salesdate = salesdate;
		this.cgprice = cgprice;
		this.salesprice = salesprice;
	}

	public Integer getKcid() {
		return kcid;
	}

	public void setKcid(Integer kcid) {
		this.kcid = kcid;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public String getComname() {
		return comname;
	}

	public void setComname(String comname) {
		this.comname = comname;
	}

	public Integer getInventory() {
		return inventory;
	}

	public void setInventory(Integer inventory) {
		this.inventory = inventory;
	}

	public Date getCgdate() {
		return cgdate;
	}

	public void setCgdate(Date cgdate) {
		this.cgdate = cgdate;
	}

	public Date getSalesdate() {
		return salesdate;
	}

	public void setSalesdate(Date salesdate) {
		this.salesdate = salesdate;
	}

	public Integer getCgprice() {
		return cgprice;
	}

	public void setCgprice(Integer cgprice) {
		this.cgprice = cgprice;
	}

	public Integer getSalesprice() {
		return salesprice;
	}

	public void setSalesprice(Integer salesprice) {
		this.salesprice = salesprice;
	}

	@Override
	public String toString() {
		return "Stock [kcid=" + kcid + ", amount=" + amount + ", comname="
				+ comname + ", inventory=" + inventory + ", cgdate=" + cgdate
				+ ", salesdate=" + salesdate + ", cgprice=" + cgprice
				+ ", salesprice=" + salesprice + "]";
	}
	
}
