package net.huosen.msg.dao;

import java.util.List;

import net.huosen.msg.model.User;
/**
 * @Description: 用户Dao接口
 * @Author huozhicheng@gmail.com
 * @Date 2013-4-29下午10:50:03
 * @Version 1.0
 */
public interface UserDao {

	public  void insertUser(User user);

	public  void deleteById(long id);

	public  List<User> findAll();

	public  void Update(User user);
	
	public List<User> findByName(String name);
	
	public User findById(long id);

}