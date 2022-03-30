package tw.ispan.productorder;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


import tw.ispan.orderInformation.OrderInformation;



@Service
public class ProductOrderService {
	
	@Autowired
	private ProductOrderRepository prp;
	
	public Page<ProductOrder> findAllByPage(Pageable pageable){
		return prp.findAll(pageable);
	}
	
	public List<ProductOrder> findAll(){
		return prp.findAll();
	}
	
	public ProductOrder findById(int id) {
		
		Optional<ProductOrder> op = prp.findById(id);
		
		if(op.isPresent()) {
			return op.get();
		}
		
		return null;
	}
	
	public ProductOrder insert(ProductOrder p) {
		return prp.save(p);
	}
}
