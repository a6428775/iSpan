package tw.ispan.store;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;



@Service
public class AuthStoreDetailsService implements UserDetailsService {
	
	@Autowired
	private StoreService sService;

	
	//抓取登入頁面 帳號輸入欄位判斷
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		
		//findByAccount 判斷資料庫有無此帳號
		Store store = sService.findByAccount(username);

		//如果有此帳號  獲得此帳號的 帳號及密碼
		return new User(store.getStoreAccount(), store.getStorePassword(), Collections.EMPTY_LIST);
		
	}

}
