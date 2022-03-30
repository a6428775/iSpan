package tw.ispan.productorder.controller;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.ispan.product.Product;
import tw.ispan.product.ProductRepository;
import tw.ispan.product.ProductService;
import tw.ispan.store.Store;
import tw.ispan.store.StoreRepository;
import tw.ispan.store.StoreService;




@Controller
@RequestMapping("/product")
@SessionAttributes(names = {"totalPages" , "totalElements"})
public class ProductController {
	
	@Autowired
	private ProductService pService;
	@Autowired
	private StoreService sService;
	@Autowired
	private StoreRepository s;
	@Autowired
	private ProductRepository p;
	
	@GetMapping("/mainacction.controller")
	public String processProductMainAction() {
		return "/product/productAll";		
	}
	
	//創建餐點
	@PostMapping("/insertProduct.controller")
	public Product processProductInsertAction(@RequestBody Product pro) {
		
		//取得登入廠商的ID 才能新增廠申自己的餐點進資料庫  還沒寫防呆
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        System.out.println(username); // user  
        Optional<Store> op1 = s.findByAccount(username);
        Integer ss = op1.get().getStoreID();
      
		pro.setStoreid(ss);

		return pService.insert(pro);
	}
	
	//更新餐點
	@PostMapping("/updateProduct.controller")
	public Product processProductupdateAction(@RequestBody Product pro) {
		
		
		//取得登入廠商的ID 才能新增廠申自己的餐點進資料庫  還沒寫防呆
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        System.out.println(username); // user  
        Optional<Store> op1 = s.findByAccount(username);
        Integer ss = op1.get().getStoreID();
      
		pro.setStoreid(ss);
	
		//取得登產品ID 透過ID 更新資料
		Integer p = pro.getProductid();

		pro.setProductid(p);
		

		return pService.insert(pro);
	}	
	
	
	@PostMapping("/queryByPage/{pageNo}")	
	@ResponseBody
	public List<Product> processQueryAllByPage(@PathVariable("pageNo") int pageNo , Model m){
		//每頁顯示的筆數
		int pageSize = 10;
		//設定顯示頁碼與每頁筆數
		Pageable pageable = PageRequest.of(pageNo-1, pageSize);
		Page<Product> page =pService.findAllByPage2(pageable);
		System.out.println(page);
		//取得資料總頁數
		m.addAttribute("totalPages", page.getTotalPages());
		//取得全部資料筆數
		m.addAttribute("totalElements", page.getTotalElements());
		//取得所取得的該頁資料內容
		return page.getContent();
	}
	
	//新增餐點 
	@GetMapping("/storeCreateProduct.controller")
	public String processSidActiong() {
		return "/product/createProduct";
	}
	
	//透過id 查詢商家
	@PostMapping("/storequerybyid.controller")
	@ResponseBody
	public Store processQueryByIdAction(@RequestParam("sid") int sid) {
		return sService.findById(sid);
	}
	
	//更新餐點
	@GetMapping("/updateproduct.controller")
	public String processUpdateAction(@RequestParam("pid") int pid , Model m) {
		m.addAttribute("pid", pid);
		return "/product/updateProduct";
	}
	
	//透過id 查詢產品
	@PostMapping("/productquerybyid.controller")
	@ResponseBody
	public Product processQueryByIdAction2(@RequestParam("pid") int pid) {
		return pService.findById(pid);
	}
	
	//透過Store id 查詢 產品資料
	@PostMapping("/testtest")	
	@ResponseBody
	public List<Product> processQueryAllByStoreID(){
		//取得登入廠商的ID 才能新增廠申自己的餐點進資料庫  還沒寫防呆
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        System.out.println(username); // user  
        Optional<Store> op1 = s.findByAccount(username);
        Integer ss = op1.get().getStoreID();

        return p.findByStoreId(ss);
        
	}
	
	
}
