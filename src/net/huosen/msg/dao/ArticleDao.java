package net.huosen.msg.dao;

import java.util.List;

import net.huosen.msg.model.Article;

/**
 * @Description: 文章Dao接口
 * @Author huozhicheng@gmail.com
 * @Date 2013-11-09下午11:09:03
 * @Version 1.0
 */
public interface ArticleDao {
	/**
	 * 查询所有的文章
	 * @return
	 */
	public List<Article> findAll();
	public int insertArticle(Article article);
}
