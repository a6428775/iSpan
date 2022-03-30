package tw.ispan.productorder;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


public interface ProductOrderRepository extends JpaRepository<ProductOrder, Integer> {
	
	@Query(value = "select * from ProductOrder where StoreID = ?", nativeQuery = true)
	public List<ProductOrder> findByStoreId(int storeID);

}
