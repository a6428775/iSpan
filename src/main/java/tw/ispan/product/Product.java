package tw.ispan.product;

import java.io.File;
import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;


@Entity @Table(name= "PRODUCT") 
@Component
public class Product {
	
	@Id
	@Column(name = "PRODUCTID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int productid;
	
	@Column(name = "PRODUCTNAME")
	private String productname;
	
	@Column(name = "PRODUCTCATEGORY")
	private String productcategory;
	
	@Column(name = "PRODUCTUNITPRICE")
	private String productunitprice;
	
	@Column(name = "PREVIEW")
	private File preview;
	
	@Column(name = "STOREID")
	private int storeid;

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getProductcategory() {
		return productcategory;
	}

	public void setProductcategory(String productcategory) {
		this.productcategory = productcategory;
	}

	public String getProductunitprice() {
		return productunitprice;
	}

	public void setProductunitprice(String productunitprice) {
		this.productunitprice = productunitprice;
	}

	public File getPreview() {
		return preview;
	}

	public void setPreview(File preview) {
		this.preview = preview;
	}

	public int getStoreid() {
		return storeid;
	}

	public void setStoreid(int storeid) {
		this.storeid = storeid;
	}
	
}
