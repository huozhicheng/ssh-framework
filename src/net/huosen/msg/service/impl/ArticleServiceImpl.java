package net.huosen.msg.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import net.huosen.msg.dao.ArticleDao;
import net.huosen.msg.model.Article;
import net.huosen.msg.service.ArticleService;

import org.springframework.stereotype.Component;

@Component("articleService")
public class ArticleServiceImpl implements ArticleService {
	
	@Resource(name = "articleDao")
	private ArticleDao articleDao;
	
	@Override
	public List<Article> queryArticle() {
		
		return articleDao.findAll();
	}

	@Override
	public int insertArticle(Article article) {
		article.setCreatedate(new Date());
		article.setUpdatedate(new Date());
		return articleDao.insertArticle(article);
	}

}
