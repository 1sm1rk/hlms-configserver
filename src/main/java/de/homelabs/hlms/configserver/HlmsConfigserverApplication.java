package de.homelabs.hlms.configserver;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@EnableConfigServer
@SpringBootApplication
public class HlmsConfigserverApplication {

	private static Logger logger = LoggerFactory.getLogger(HlmsConfigserverApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(HlmsConfigserverApplication.class, args);
	}

}
