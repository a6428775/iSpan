package tw.ispan.orderInformation;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity @Table(name= "ORDERINFORMATION") 
@Component
public class OrderInformation {
	
	@Id
	@Column(name = "ORDERINFORMATIONID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderinformationID;

	@Column(name = "ORDERID")
	private int orderID;
	
	@Column(name = "PRODUCTNAME")
	private String productName;
	
	@Column(name = "NUMBER")
	private int number;
	
	@Column(name = "PRODUCTUNITPRICE")
	private String productUnitPrice;
	
	@Column(name = "PRODUCTPRICE")
	private String productPrice;
	
	@Column(name = "REMARK")
	private String remark;

	public int getOrderinformationID() {
		return orderinformationID;
	}

	public void setOrderinformationID(int orderinformationID) {
		this.orderinformationID = orderinformationID;
	}	
	
	public int getOrderID() {
		return orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getProductUnitPrice() {
		return productUnitPrice;
	}

	public void setProductUnitPrice(String productUnitPrice) {
		this.productUnitPrice = productUnitPrice;
	}

	public String getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}


}
