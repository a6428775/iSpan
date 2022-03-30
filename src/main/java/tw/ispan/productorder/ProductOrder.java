package tw.ispan.productorder;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity @Table(name= "PRODUCTORDER") 
@Component
public class ProductOrder {
	
	@Id
	@Column(name = "ORDERID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderid;
	
	@Column(name = "STOREID")
	private int storeid;
	
	@Column(name = "USERID")
	private int userid;
	
	@Column(name = "ORDERDATE")
	@JsonFormat(pattern = "yyyy-MM-dd" ,timezone = "GMT+8")
	private Date orderdate;
	
	@Column(name = "ORDERSTATUS")
	private String orderstatus;

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public int getStoreid() {
		return storeid;
	}

	public void setStoreid(int storeid) {
		this.storeid = storeid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public Date getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

	public String getOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	} 
}
