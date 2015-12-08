package com.nizhide.ui.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;;

@Controller
public class ArticleController {
	
	 private static final Logger LOGGER = LoggerFactory.getLogger(ArticleController.class);

	@RequestMapping("/article")
	 public String article(){
		 return "article";
	}

	@RequestMapping("/article2")
	 public String article2(){
		LOGGER.info("ENTER INTO article2");
		 return "article2";
	}
	
	@RequestMapping("/index")
	 public String index(){
		 return "index";
	}
}
