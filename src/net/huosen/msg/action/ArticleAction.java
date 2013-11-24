package net.huosen.msg.action;

import java.util.List;

import javax.annotation.Resource;

import net.huosen.msg.model.Article;
import net.huosen.msg.model.User;
import net.huosen.msg.service.ArticleService;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;
/**
 * @Description: 文章相关的Action类
 * @Author huozhicheng@gmail.com
 * @Date 2013-11-17下午08:18:46
 * @Version 1.0
 */
@Scope("prototype")
@Component("articleAction")
public class ArticleAction extends ActionSupport{

	private static final long serialVersionUID = 7108128946799711804L;
	@Resource(name="articleService")
	private ArticleService articleService;
	private Article article;
	private List<Article> list;
	
	public void setArticle(Article article) {
		this.article = article;
	}
	public Article getArticle() {
		return article;
	}
	public List<Article> getList() {
		return list;
	}
	
	public String insert() {
		int i = articleService.insertArticle(article);
		if(i>0){
			return "success";
		}else{
			return "input";
		}
	}
	public String list(){
		this.list = articleService.queryArticle();
		return SUCCESS;
	}
}
