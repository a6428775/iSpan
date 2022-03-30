package tw.ispan.store;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import tw.ispan.product.Product;



public interface StoreRepository extends JpaRepository<Store, Integer> {
	
	public Optional<Store> findByAccount(String StoreAccount);
	

}
