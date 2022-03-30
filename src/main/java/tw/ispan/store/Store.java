package tw.ispan.store;

import java.io.File;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity @Table(name= "Store") 
@Component
public class Store {
	
	@Id
	@Column(name = "StoreID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int storeID;
	
	@Column(name = "STORENAME")
	private String storeName;
	
	@Column(name = "STORECATEGORY")
	private String storeCategory;
	
	@Column(name = "STOREPHONE")
	private String storePhone;
	
	@Column(name = "STOREADDRESS")
	private String storeAddress;
	
	@Column(name = "STOREBUSINESSHOURS")
	private String storeBusinessHours;
	
	@Column(name = "PREVIEW")
	private File preview;
	
	@Column(name = "STOREACCOUNT")
	private String account;
	
	@Column(name = "STOREPASSWORD")
	private String storePassword;

	public int getStoreID() {
		return storeID;
	}

	public void setStoreID(int storeID) {
		this.storeID = storeID;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getStoreCategory() {
		return storeCategory;
	}

	public void setStoreCategory(String storeCategory) {
		this.storeCategory = storeCategory;
	}

	public String getStorePhone() {
		return storePhone;
	}

	public void setStorePhone(String storePhone) {
		this.storePhone = storePhone;
	}

	public String getStoreAddress() {
		return storeAddress;
	}

	public void setStoreAddress(String storeAddress) {
		this.storeAddress = storeAddress;
	}

	public String getStoreBusinessHours() {
		return storeBusinessHours;
	}

	public void setStoreBusinessHours(String storeBusinessHours) {
		this.storeBusinessHours = storeBusinessHours;
	}

	public File getPreview() {
		return preview;
	}

	public void setPreview(File preview) {
		this.preview = preview;
	}

	public String getStoreAccount() {
		return account;
	}

	public void setStoreAccount(String account) {
		this.account = account;
	}

	public String getStorePassword() {
		return storePassword;
	}

	public void setStorePassword(String storePassword) {
		this.storePassword = storePassword;
	}
	
	

}
