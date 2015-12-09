package com.nizhide.repository;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.nizhide.entity.Article;

@Repository("articleRepository")
public interface ArticleRepository extends MongoRepository<Article, String> {
	
}
