package net.huosen.msg.service;

import java.util.List;

import javax.annotation.Resource;

import net.huosen.msg.dao.UserDao;
import net.huosen.msg.model.User;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
/**
 * @Description: Service层，在此可以进行事物管理
 * @Author huozhicheng@gmail.com
 * @Date 2013-4-29下午10:51:54
 * @Version 1.0
 */
@Component("userService")
public class UserService {
	@Resource(name="userDao")
	private UserDao dao;
	@Transactional
	public boolean insertUser(User user){
		dao.insertUser(user);
		return true;
	}
	@Transactional
	public boolean deleteById(long id){
		dao.deleteById(id);
		return true;
	}
	@Transactional
	public boolean  updateUser(User user){
		dao.Update(user);
		return true;
	}
	@Transactional
	public List<User> findAll(){
		return dao.findAll();
	}
	@Transactional
	public List<User> findByName(String name){
		return dao.findByName(name);
	}
	@Transactional
	public User findById(long id){
		return dao.findById(id);
	}
	}
