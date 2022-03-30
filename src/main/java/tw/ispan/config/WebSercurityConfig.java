package tw.ispan.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import tw.ispan.store.AuthStoreDetailsService;



@EnableWebSecurity
public class WebSercurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private AuthStoreDetailsService myUserDetailService;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth
		.userDetailsService(myUserDetailService)
		.passwordEncoder(new BCryptPasswordEncoder());
		
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.authorizeRequests()
		.antMatchers(HttpMethod.GET, "/Store/**").authenticated()
		.antMatchers(HttpMethod.GET).permitAll()
		.antMatchers(HttpMethod.POST, "/Store/**").authenticated()
		.antMatchers(HttpMethod.POST).permitAll()
		.anyRequest().authenticated()
		.and()
		.rememberMe().tokenValiditySeconds(86400).key("rememberMe-key")
		.and()
		.csrf().disable()
		.formLogin().loginPage("/login/page")
		.defaultSuccessUrl("/login/welcome");
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		
	}

}