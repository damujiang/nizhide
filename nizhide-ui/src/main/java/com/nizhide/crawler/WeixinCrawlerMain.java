package com.nizhide.crawler;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.nizhide.entity.Article;
import com.nizhide.repository.ArticleRepository;

@Component
public class WeixinCrawlerMain {
	 private static final Logger LOGGER = LoggerFactory.getLogger(WeixinCrawlerMain.class);
	 @Resource
	    @Qualifier("articleRepository")
		ArticleRepository articleRepository;
	 
	 @Autowired 
	 WeixinCrawler crawler;
    @Scheduled(fixedDelay = 5000, initialDelay=10000)
	public void task() throws Exception{
    	LOGGER.info("WeixinCrawlerMain.task.....staring...");
    	
    
		//crawler.test();
		// TODO Auto-generated method stub
   //	crawler.addSeed("http://weixin.sogou.com/gzh?openid=oIWsFt-yrqPF7nVebq74gR0loTlw&ext=HzerOQ8mEsX60sytQeobGQuLGpSCFyVB6aMhVyN7r_51BEbqyyKNNKj7O-oEPcLQ");
		 crawler.addSeed("http://weixin.sogou.com/weixin?type=2&query=%E6%9E%B6%E6%9E%84&ie=utf8&w=01019900&sut=5538&sst0=1449153285877");
	        //crawler.addRegex("http://blog.csdn.net/.*/article/details/.*");
	        crawler.addRegex(".*/websearch/art.jsp.*");
	        crawler.addRegex("http://weixin.sogou.com/weixin\\?query=.*");
	        /*可以设置每个线程visit的间隔，这里是毫秒*/
	        crawler.setVisitInterval(1000);
	        /*可以设置http请求重试的间隔，这里是毫秒*/
	        crawler.setRetryInterval(1000);
	        crawler.setThreads(1);
	        crawler.setVisitInterval(10000);
	        crawler.start(2);
	}
	public static void main(String[] args) throws Exception {
		//WeixinCrawler crawler = new WeixinCrawler(true);
		// TODO Auto-generated method stub
		 //crawler.addSeed("http://weixin.sogou.com/weixin?type=2&query=%E6%9E%B6%E6%9E%84&ie=utf8&w=01019900&sut=5538&sst0=1449153285877");
	        //crawler.addRegex("http://blog.csdn.net/.*/article/details/.*");
	       // crawler.addRegex(".*/websearch/art.jsp.*");
	      //  crawler.addRegex("http://weixin.sogou.com/weixin\\?query=.*");
	        /*可以设置每个线程visit的间隔，这里是毫秒*/
	        //crawler.setVisitInterval(1000);
	        /*可以设置http请求重试的间隔，这里是毫秒*/
	        //crawler.setRetryInterval(1000);
	       // crawler.setThreads(1);
	     //   crawler.setVisitInterval(10000);
	      //  crawler.start(2);
	}

}
