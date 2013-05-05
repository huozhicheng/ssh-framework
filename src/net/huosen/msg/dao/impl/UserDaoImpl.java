package net.huosen.msg.dao.impl;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import net.huosen.msg.dao.UserDao;
import net.huosen.msg.model.User;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;
/**
 * @Description: 用户Dao实现
 * @Author huozhicheng@gmail.com
 * @Date 2013-4-29下午10:50:36
 * @Version 1.0
 */
@Component("userDao")
public class UserDaoImpl implements UserDao {
	@Resource(name="hibernateTemplate")
	private HibernateTemplate template;
	
	/* (non-Javadoc)
	 * @see cn.net.msg.dao.impl.UserDao#insertUser(cn.net.msg.model.User)
	 */
	@Override
	public void insertUser(User user){
		 long x=(Long) template.save(user);
		 System.out.println(x);
	}
 
	/* (non-Javadoc)
	 * @see cn.net.msg.dao.impl.UserDao#deleteById(java.lang.String)
	 */
	@Override
	public void deleteById(long id){
		User user=(User) template.get(User.class, id);
		template.delete(user);
	}
	
	/* (non-Javadoc)
	 * @see cn.net.msg.dao.impl.UserDao#findById(java.lang.String)
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<User> findAll(){
		final String hql = "from User";
		final int offset = 0;
		final int length = 10;
		List<User> list = template.executeFind(new HibernateCallback() {
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
	
	/* (non-Javadoc)
	 * @see cn.net.msg.dao.impl.UserDao#Update(cn.net.msg.model.User)
	 */
	@Override
	public void Update(User user){
		template.update(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> findByName(String name) {
		List<User> list=template.find("from User u where u.name=?", name);  
		return list;
	}

	@Override
	public User findById(long id) {
		return template.get(User.class, id);
	}
}
