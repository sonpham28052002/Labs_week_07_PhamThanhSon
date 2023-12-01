package vn.edu.iuh.fit.labs_07_week_07_phamthanhson;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.repositories.OrderRepository;

@SpringBootTest
class Labs07Week07PhamThanhSonApplicationTests {

	@Autowired
	private OrderRepository orderRepository;
	@Test
	void contextLoads() {

	}

}
