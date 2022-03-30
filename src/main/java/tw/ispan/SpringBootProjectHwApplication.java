package tw.ispan;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.PropertySource;

@SpringBootApplication
@PropertySource(value = {"classpath:jdbc.properties"}, ignoreResourceNotFound = true)
public class SpringBootProjectHwApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootProjectHwApplication.class, args);
	}

}
