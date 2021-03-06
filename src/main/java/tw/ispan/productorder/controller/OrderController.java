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

import tw.ispan.orderInformation.OrderInformation;
import tw.ispan.orderInformation.OrderInformationRepository;
import tw.ispan.orderInformation.OrderInformationService;
import tw.ispan.product.Product;
import tw.ispan.productorder.ProductOrder;
import tw.ispan.productorder.ProductOrderRepository;
import tw.ispan.productorder.ProductOrderService;
import tw.ispan.store.Store;
import tw.ispan.store.StoreRepository;
import tw.ispan.store.StoreService;


@Controller
@RequestMapping("/Store")
@SessionAttributes(names = {"totalPages" , "totalElements"})
public class OrderController {
	
	@Autowired
	private ProductOrderService pService;
	@Autowired
	private StoreRepository s;
	@Autowired
	private StoreService sService;
	@Autowired
	private ProductOrderRepository p;
	@Autowired
	private OrderInformationRepository o;
	@Autowired
	private OrderInformationService oService;

	
	@GetMapping("/Store.controller")
	public String processAction(){ 
		return "Order/OrderAll";  
	}

	@PostMapping("/orderquerybyid.controller")
	@ResponseBody
	public ProductOrder processQueryByIdAction(@RequestParam("oid") int oid) {
		return pService.findById(oid);
	}
	@PostMapping("/orderqueryall.controller")	
	@ResponseBody
	public List<ProductOrder> processQueryAll(){
		return pService.findAll();
	}
	
	@PostMapping("/queryByPage/{pageNo}")	
	@ResponseBody
	public List<ProductOrder> processQueryAllByPage(@PathVariable("pageNo") int pageNo , Model m){
		//?????????????????????
		int pageSize = 10;
		//?????????????????????????????????
		Pageable pageable = PageRequest.of(pageNo-1, pageSize);
		Page<ProductOrder> page =pService.findAllByPage(pageable);
		//?????????????????????
		m.addAttribute("totalPages", page.getTotalPages());
		//????????????????????????
		m.addAttribute("totalElements", page.getTotalElements());
		//????????????????????????????????????
		return page.getContent();
	}
        
	//?????????????????? 
	@GetMapping("/updateStore.controller")
	public String processUpdateStoreActiong() {
		return "/Order/updateStore";
	}
	
	@PostMapping("/storeupdateInformation.controller")
	@ResponseBody
	public Store processUpdateStoreAction2() {
		//?????????????????????ID ?????????????????????????????????????????????  ???????????????
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        System.out.println(username); // user  
        return sService.findByAccount(username);

	}
	
	
	//??????Store id ?????? ????????????
	@PostMapping("/QueryAllByStoreID.controller")	
	@ResponseBody
	public List<ProductOrder> processQueryAllByStoreID(){
		//?????????????????????ID ?????????????????????????????????????????????  ???????????????
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        System.out.println(username); // user  
        Optional<Store> op1 = s.findByAccount(username);
        Integer ss = op1.get().getStoreID();

        return p.findByStoreId(ss);
        
	}
	
	//????????????
	@PostMapping("/QueryInformationByOrderID.controller")	
	@ResponseBody
	public List<OrderInformation> processQueryAllByOrderID(@RequestParam("oid") int oid){
		return  o.findByOrderId(oid);
	}

}
