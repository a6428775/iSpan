package tw.ispan.store.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import javax.servlet.jsp.tagext.TryCatchFinally;

import org.eclipse.jdt.internal.compiler.batch.FileFinder;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tw.ispan.exception.UserNotFoundException;
import tw.ispan.store.Store;
import tw.ispan.store.StoreRepository;
import tw.ispan.store.StoreService;




@Controller
public class StoreRegisterController {
	
	@Autowired
	private StoreService sService;
	
	@Autowired
	private StoreRepository srp;

	
	
	@RequestMapping(path = "/register2.controller", method = RequestMethod.POST)
	public String processMainAction(@RequestParam("account") String user, @RequestParam("password") String pwd, Model m) {
		
		
		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("errors", errors);
		
		if(user==null || user.length()==0) {
			errors.put("name", "username is required");
		}
		
		if(pwd==null || pwd.length()==0) {
			errors.put("pwd", "user password is required");
		}
		
		if(errors!=null && !errors.isEmpty()) {
			return "register";
		}
		
		Store store = new Store();
		
		
		String encode = new BCryptPasswordEncoder().encode(pwd);


		
		 Optional<Store> op1 = srp.findByAccount(user);

		 if(op1.isPresent()) {
			 
				errors.put("account", "Account already exists");
				
				return "register";
		 }	 
			 
		 	store.setStoreAccount(user);
		 	store.setStorePassword(encode);
			 
			 sService.createAccount(store);
			 
			 return "login";
			
	
	
//		errors.put("account", "Account already exists");
//		return "register";
	}
	
	
}
