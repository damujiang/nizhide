package com.nizhide.ui.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ArticleController {
	
	@RequestMapping("/article")
	 public String article(){
		 return "article";
	}

	@RequestMapping("/article2")
	 public String article2(){
		 return "article2";
	}
	
	@RequestMapping("/index")
	 public String index(){
		 return "index";
	}
}
