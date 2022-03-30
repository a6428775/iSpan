package tw.ispan.product;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;







public interface ProductRepository extends JpaRepository<Product, Integer> {

	@Query(value = "select * from Product where StoreID = ?", nativeQuery = true)
	public List<Product> findByStoreId(int storeID);
	

}
