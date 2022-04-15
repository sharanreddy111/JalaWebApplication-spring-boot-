package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.example.demo.controller.UserController;
import com.example.demo.service.UserServiceIMPL;

@SpringBootApplication
@ComponentScan(basePackageClasses = {UserController.class, UserServiceIMPL.class})
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}
