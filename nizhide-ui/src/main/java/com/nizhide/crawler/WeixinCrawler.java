package com.nizhide.crawler;

import javax.annotation.Resource;

import cn.edu.hfut.dmic.contentextractor.ContentExtractor;
import cn.edu.hfut.dmic.contentextractor.News;
import cn.edu.hfut.dmic.webcollector.crawler.Crawler;
import cn.edu.hfut.dmic.webcollector.fetcher.Visitor;
import cn.edu.hfut.dmic.webcollector.model.CrawlDatum;
import cn.edu.hfut.dmic.webcollector.model.CrawlDatums;
import cn.edu.hfut.dmic.webcollector.model.Links;
import cn.edu.hfut.dmic.webcollector.model.Page;
import cn.edu.hfut.dmic.webcollector.net.HttpRequest;
import cn.edu.hfut.dmic.webcollector.net.HttpResponse;
import cn.edu.hfut.dmic.webcollector.net.Requester;
import cn.edu.hfut.dmic.webcollector.plugin.ram.RamDB;
import cn.edu.hfut.dmic.webcollector.plugin.ram.RamDBManager;
import cn.edu.hfut.dmic.webcollector.plugin.ram.RamGenerator;
import cn.edu.hfut.dmic.webcollector.util.RegexRule;

import org.jsoup.nodes.Document;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.nizhide.entity.Article;
import com.nizhide.repository.ArticleRepository;

/**
 *
 * @author hu
 */
@Component
public class WeixinCrawler extends Crawler implements Visitor,Requester{

    public static final Logger LOG = LoggerFactory.getLogger(WeixinCrawler.class);
    
    @Resource
    @Qualifier("articleRepository")
	ArticleRepository articleRepository;
       /**
     * URL正则约束
     */
    protected RegexRule regexRule = new RegexRule();
    
     /**
     * 是否自动抽取符合正则的链接并加入后续任务
     */
    protected boolean autoParse=true;

    public WeixinCrawler() {
        this.visitor=this;
        this.requester=this;
        this.autoParse=true;
        
        RamDB ramDB = new RamDB();
        this.dbManager = new RamDBManager(ramDB);
        this.generator = new RamGenerator(ramDB);
    }

    public void test(){
    	Article article = new Article();
		article.setTitle("SDCC aaaaaaaaaa");
		article.setContent("Content.....SDCC ");
		articleRepository.save(article);
    	
    }
   
    public void afterVisit(Page page, CrawlDatums next) {
         if (autoParse && !regexRule.isEmpty()) {
             
            String conteType = page.getResponse().getContentType();
            if (conteType != null && conteType.contains("text/html")) {
                Document doc = page.getDoc();
                if (doc != null) {
                   Links links=new Links().addByRegex(doc, regexRule);
                   next.add(links);
                }
            }
        }
    }

    
    public void fail(Page page, CrawlDatums next) {
    }

    
    public HttpResponse getResponse(CrawlDatum crawlDatum) throws Exception {
        HttpRequest request=new HttpRequest(crawlDatum);
       request.setCookie("SUV=00667D43DB86305B56606D79A5E27481; ABTEST=0|1449160057|v1; SUID=5B3086DB6F1C920A0000000056606D7A; SUIR=1449160058; SUID=5B3086DB1810990A0000000056606D7A; CXID=64E3EABD2717DBFF3C38C7A26A66A999; weixinIndexVisited=1; ppinf=5|1449283252|1450492852|Y2xpZW50aWQ6NDoyMDE3fGNydDoxMDoxNDQ5MjgzMjUyfHJlZm5pY2s6MzY6JUU1JThEJTk3JUU1JTlCJUJEJUU2JTlDJUE4JUU1JThDJUEwfHRydXN0OjE6MXx1c2VyaWQ6NDQ6Q0Y1QTI5NTdDM0REREUwQUIwQzRDQUUxMDlBOTUxN0RAcXEuc29odS5jb218dW5pcW5hbWU6MzY6JUU1JThEJTk3JUU1JTlCJUJEJUU2JTlDJUE4JUU1JThDJUEwfA; pprdig=LPkbvgMeStCZdd9EXRTuenElrSqi_Cb3bieFwQlb4TtVHCAqa3baZ8oUDW9mMgNmoQkmM-pkgjKOTCBRImfHWA7SbUUtnFTem-3jxIcCLegJMPR1wT2sM2fKczy7AmPrDKkP0cdhhhwHJ50CtVvZ_d4o4gFpyHxWMlAKAxj2SQE; SNUID=3DD2674636321058DEC1C635370395C9; PHPSESSID=afdrmavg5vtaosm82lp853ms17; ppmdig=1449678092000000e55c526233d2c2822be3da92e4d3ad84; ad=JZllllllll2QYyiQlllllVBoQJclllllL5HZPkllllwllllljqxlw@@@@@@@@@@@; IPLOC=CN4413; sct=10; seccodeRight=success; successCount=1|Wed, 09 Dec 2015 16:55:17 GMT");
        request.setHeader("Upgrade-Insecure-Requests", "1");
        return request.getResponse();
    }
    
    
    /**
     * 添加URL正则约束
     *
     * @param urlRegex
     */
    public void addRegex(String urlRegex) {
        regexRule.addRule(urlRegex);
    }

    /**
     *
     * @return 返回是否自动抽取符合正则的链接并加入后续任务
     */
    public boolean isAutoParse() {
        return autoParse;
    }

    /**
     * 设置是否自动抽取符合正则的链接并加入后续任务
     *
     * @param autoParse
     */
    public void setAutoParse(boolean autoParse) {
        this.autoParse = autoParse;
    }

    /**
     *
     * @return
     */
    public RegexRule getRegexRule() {
        return regexRule;
    }

    /**
     *
     * @param regexRule
     */
    public void setRegexRule(RegexRule regexRule) {
        this.regexRule = regexRule;
    }


	public void visit(Page page, CrawlDatums next) {
		// TODO Auto-generated method stub
		if (page.matchUrl(".*art.jsp.*")){
			
			try {
				News news = ContentExtractor.getNewsByHtml(page.getHtml());
				System.out.print(news);
				Article article = new Article();
				
				article.setUrl(news.getUrl());
				article.setTime(news.getTime());
				article.setTitle(news.getTitle());
				article.setContent(news.getContent());
				articleRepository.save(article);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
    
    

}
