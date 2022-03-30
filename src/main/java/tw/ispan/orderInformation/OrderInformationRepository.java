package tw.ispan.orderInformation;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;





public interface OrderInformationRepository extends JpaRepository<OrderInformation, Integer> {
	
	@Query(value = "select * from OrderInformation", nativeQuery = true)
	public List<OrderInformation> findAll2();
	
	@Query(value = "select * from OrderInformation where OrderID = ?", nativeQuery = true)
	public List<OrderInformation> findByOrderId(int orderID);
}
