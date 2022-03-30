package tw.ispan.store;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.ispan.exception.UserNotFoundException;





@Service
@Transactional
public class StoreService {
	
	@Autowired
	private StoreRepository srp;
	
	
	public Store createAccount(Store store) {
		return srp.save(store);
	} 
	
	public Store update(Store Store) {
		return srp.save(Store);
	}
	
	public List<Store> findAll(){
		return srp.findAll();
	}
	
	public void deleteById(Integer id) {
		srp.deleteById(id);
	}
	
	//登入驗證有無此帳號
	public Store findByAccount(String StoreAccount) {
		
		 Optional<Store> op1 = srp.findByAccount(StoreAccount);

		 if(op1.isEmpty()) {
			 throw new UserNotFoundException("Account errow");
		 }	 
			 return op1.get();
	}
	
	public Store findById(int id) {
		Optional<Store> op = srp.findById(id);
		
		if(op.isPresent()) {
			return op.get();
		}
		
		return null;
	}
	
	public Store findIdByAccount(String username) {
		Optional<Store> op = srp.findByAccount(username);
		
		if(op.isPresent()) {
			return op.get();
		}
		
		return null;
	}

}
