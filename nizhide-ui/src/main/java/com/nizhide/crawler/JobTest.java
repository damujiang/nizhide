package com.nizhide.crawler;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.nizhide.entity.Article;
import com.nizhide.repository.ArticleRepository;

@Component
public class JobTest {

	 @Resource
	    @Qualifier("articleRepository")
		ArticleRepository articleRepository;
	 //@Scheduled(fixedDelay = 5000, initialDelay=10000)
	 public void test(){
	    	Article article = new Article();
			article.setTitle("SDCC aaaaaaaaaa");
			article.setContent("Content.....SDCC ");
			articleRepository.save(article);
	    	
	    }
}
