package net.huosen.msg.action;

import java.util.List;

import javax.annotation.Resource;

import net.huosen.msg.model.User;
import net.huosen.msg.service.UserService;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;
/**
 * @Description: 处理用户操作的Action类
 * @Author huozhicheng@gmail.com
 * @Date 2013-4-29下午10:49:46
 * @Version 1.0
 */

//@Scope表示为每个Request创建新的Action，默认为单例
@Scope("prototype")
@Component("userAction")
public class UserAction extends ActionSupport{

	private static final long serialVersionUID = -7574227471454774126L;
	private int userId;
	private User user;
	private List<User> list;
	@Resource(name="userService")
	UserService service;
	
	public String inseart() {
		service.insertUser(user);
		return "success";
	}

	public String delete(){
		service.deleteById(user.getId());
		return "success";
	}
	
	public String  findByName(){
		list = service.findByName(user.getName());
		return "success";
	}
	
	public String update(){
		service.updateUser(user);
		return "success";
	}
	
	public String findAll(){
		list = service.findAll();
		return "success";
	}
	
	public String findById(){
		user = service.findById(userId);
		return SUCCESS;
	}
	
	public void setUserId(int userId) {
		this.userId = userId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getList() {
		return list;
	}
	
	/*
	 * 校验插入数据的操作
	 */
	public void validateInseart(){
		//用户名校验
		if(null == user.getName() || "".equals(user.getName().trim())){
			this.addFieldError("name", "用户名不能为空！");
		}else if(16 < user.getName().trim().length()){
			this.addFieldError("name", "用户名不能超过16位！");
		}
		
		if(0 > user.getAge() || 150 < user.getAge()){
			this.addFieldError("age", "年龄只能在 0~150之间！");
		}
		if(null == user.getSex() || ( (!user.getSex().equals("man")) && (!user.getSex().equals("woman")) )){
			this.addFieldError("sex", "请选择性别！");
		}
	}
	/*
	 * 校验更新数据的操作
	 */
	public void validateUpdate(){
		if(100000 > user.getId()){
			this.addFieldError("id", "无效的用户编号！");
		}
		
		if(null == user.getName() || "".equals(user.getName().trim())){
			this.addFieldError("name", "用户名不能为空！");
		}else if(16 < user.getName().trim().length()) {
			this.addFieldError("name", "用户名不能超过16位！");
		}
		
		if(0 > user.getAge() || 150 < user.getAge()){
			this.addFieldError("age", "年龄只能在 0~150之间！");
		}
		
		if(null == user.getSex() || ( (!user.getSex().equals("man")) && (!user.getSex().equals("woman")) )){
			this.addFieldError("sex", "请选择性别！");
		}
	}
	/*
	 * 校验删除数据的操作
	 */
	public void validateDelete(){
		if(100000 > user.getId()){
			this.addFieldError("id", "无效的用户编号！");
		}
	}
	
	/*
	 * 根据用户名查找校验
	 */
	public void validateFindByName(){
		if(null == user.getName() || "".equals(user.getName().trim())){
			this.addFieldError("name", "用户名不能为空！");
		}else if(16 < user.getName().trim().length()){
			this.addFieldError("name", "用户名不能超过16位！");
		}
	}
}
