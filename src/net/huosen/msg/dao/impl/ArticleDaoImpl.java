package net.huosen.msg.dao.impl;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import net.huosen.msg.dao.ArticleDao;
import net.huosen.msg.model.Article;
import net.huosen.msg.model.User;

@Component("articleDao")
public class ArticleDaoImpl implements ArticleDao {
	
	@Resource(name="hibernateTemplate")
	private HibernateTemplate template;
	
	@Override
	public List<Article> findAll() {
		final String hql = "from Article";
		final int offset = 0;
		final int length = 10;
		List<Article> list = template.executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
			throws HibernateException, SQLException {
				Query query = session.createQuery(hql);
				query.setFirstResult(offset);
				query.setMaxResults(length);
				List list = query.list();
				return list;
			}
		});
		return list;
	}

	@Override
	public int insertArticle(Article article) {
		int x=(Integer) template.save(article);
		return x;
	}

}
