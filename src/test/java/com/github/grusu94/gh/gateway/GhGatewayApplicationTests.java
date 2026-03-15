package com.github.grusu94.gh.gateway;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest(properties = {
        "spring.profiles.active=test",
        "eureka.client.enabled=false",
        "spring.cloud.gateway.enabled=false"
})
class GhGatewayApplicationTests {

	@Test
	void contextLoads() {
	}

}
