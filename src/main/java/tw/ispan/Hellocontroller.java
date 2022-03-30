package tw.ispan;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.ispan.orderInformation.OrderInformation;
import tw.ispan.orderInformation.OrderInformationRepository;
import tw.ispan.product.Product;
import tw.ispan.product.ProductRepository;
import tw.ispan.store.Store;
import tw.ispan.store.StoreRepository;
import tw.ispan.store.StoreService;

@Controller
//@RequestMapping("/Store")
public class Hellocontroller {
	
	@Autowired
	private StoreRepository s;
	@Autowired
	private ProductRepository p;
	@Autowired
	private OrderInformationRepository o;
	
	@GetMapping("/hello.controller")
	@ResponseBody
	public Integer processaction(){
		
		//取得登入帳號的 "帳號" 資料
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        System.out.println(username); // user  
        
        //透過帳號 去搜尋 Store 資料庫裡的資料
        Optional<Store> op1 = s.findByAccount(username);
        Integer ss = op1.get().getStoreID();
        return ss;
	}
	@GetMapping("/test")

	public String processAction2() {
		return "/Store/QueryInformationByOrderID.controller";
	}
	
	@GetMapping("/test2")
	public String processAction4() {

		return "home";
	}
	
	//只搜尋某STOREID 的餐點
	@GetMapping("/test12313")
	@ResponseBody
	public List<OrderInformation> processAction3() {
		return o.findByOrderId(4);
		
	}
}
