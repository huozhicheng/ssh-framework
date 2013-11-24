package net.huosen.msg.service;

import java.util.List;

import net.huosen.msg.model.Article;
/**
 * @Description: 文章的业务处理类
 * @Author huozhicheng@gmail.com
 * @Date 2013-11-09下午11:31:54
 * @Version 1.0
 */
public interface ArticleService {
	/**
	 * 查询所有文章
	 * @return
	 */
	public List<Article> queryArticle();
	public int insertArticle(Article article);
}
