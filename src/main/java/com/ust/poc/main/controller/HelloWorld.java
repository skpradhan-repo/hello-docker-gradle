/**
 * 
 */
package com.ust.poc.main.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author 165418
 *
 */
@RestController
public class HelloWorld {

	@GetMapping("/")
	public String sayHello() {
		return "Hello World";
	}
}
