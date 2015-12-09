package com.nizhide.ui.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.nizhide.crawler.JobTest;
import com.nizhide.crawler.WeixinCrawler;
import com.nizhide.entity.Article;
import com.nizhide.repository.ArticleRepository;

@Controller
public class ArticleController {
	
	 private static final Logger LOGGER = LoggerFactory.getLogger(ArticleController.class);
	 
	 @Resource
	    @Qualifier("articleRepository")
		ArticleRepository articleRepository;
	 
	 @Autowired
	 JobTest job;
	 
	@RequestMapping("/article")
	 public String article() throws Exception{
		//WeixinCrawler crawler = new WeixinCrawler(true);
		// TODO Auto-generated method stub
		// crawler.addSeed("http://weixin.sogou.com/weixin?type=2&query=%E6%9E%B6%E6%9E%84&ie=utf8&w=01019900&sut=5538&sst0=1449153285877");
	        //crawler.addRegex("http://blog.csdn.net/.*/article/details/.*");
	      //  crawler.addRegex(".*/websearch/art.jsp.*");
	       // crawler.addRegex("http://weixin.sogou.com/weixin\\?query=.*");
	        /*可以设置每个线程visit的间隔，这里是毫秒*/
	        //crawler.setVisitInterval(1000);
	        /*可以设置http请求重试的间隔，这里是毫秒*/
	        //crawler.setRetryInterval(1000);
	    //    crawler.setThreads(1);
	     //   crawler.setVisitInterval(10000);
	    //    crawler.start(2);
	        
		 return "article";
	}

	// 从List中随机出count个对象
	private Article randomTopic(List<Article> list) {
		int count = 1;
		// 创建一个长度为count(count<=list)的数组,用于存随机数
		int[] a = new int[count];
		// 利于此数组产生随机数
		int[] b = new int[list.size()];
		int size = list.size();

		// 取样填充至数组a满
		for (int i = 0; i < count; i++) {
			int num = (int) (Math.random() * size); // [0,size)
			int where = -1;
			for (int j = 0; j < b.length; j++) {
				if (b[j] != -1) {
					where++;
					if (where == num) {
						b[j] = -1;
						a[i] = j;
					}
				}
			}
			size = size - 1;
		}
		return list.get(a[0]);
	}
	
	@RequestMapping("/article2")
	 public ModelAndView article2(){
		LOGGER.info("ENTER INTO article2");
		Article article = new Article();
		article.setTitle("SDCC 2015");
		article.setContent("Content.....SDCC ");
		//articleRepository.save(article);
		List<Article> articles = articleRepository.findAll();
		Map<String, Object> model = new HashMap<String, Object>();
		if(articles != null && articles.size() > 0)
		{
			model.put("article", randomTopic(articles));
			
		}else{
			model.put("article", article);
		}
		return new ModelAndView("article2", model);
	}
	
	@RequestMapping("/index")
	 public String index(){
		//JobTest job = new JobTest();
		job.test();
		 return "index";
	}
}
