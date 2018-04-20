package com.cqfour.bysj;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@MapperScan(basePackages = {"com.cqfour.bysj.mapper.*"})
public class BysjApplication {

	public static void main(String[] args) {
		SpringApplication.run(BysjApplication.class, args);
	}
}
