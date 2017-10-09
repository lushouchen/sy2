package com.action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.DB;
import com.opensymphony.xwork2.ActionSupport;
import com.orm.Tauthor;


public class author_action extends ActionSupport
{
	
	public String authorAdd()
	{
		HttpServletRequest req=ServletActionContext.getRequest();
		
		String id=String.valueOf(new Date().getTime());
		String name=req.getParameter("name").trim();
		String age=req.getParameter("age").trim();
		String country=req.getParameter("country").trim();
		
		String sql="insert into t_author(id,name,age,country) values(?,?,?,?)";
		Object[] params={id,name,age,country};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "信息添加完毕");
		return "msg";
	}
	
	
	
	public String authorMana()
	{
		HttpServletRequest req=ServletActionContext.getRequest();
		
		List authorList=new ArrayList();
		String sql="select * from t_author";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tauthor author=new Tauthor();
				
				author.setId(rs.getString("id"));
				author.setName(rs.getString("name"));
				author.setAge(rs.getString("age"));
				author.setCountry(rs.getString("country"));
				
				authorList.add(author);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("authorList", authorList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String authorDel()
	{
		HttpServletRequest req=ServletActionContext.getRequest();
		
		String sql="delete from t_author where id=?";
		Object[] params={req.getParameter("id")};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "信息删除完毕");
		return "msg";
	}
	
	
	public String authorSelect()
	{
		HttpServletRequest req=ServletActionContext.getRequest();
		
		List authorList=new ArrayList();
		String sql="select * from t_author";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tauthor author=new Tauthor();
				
				author.setId(rs.getString("id"));
				author.setName(rs.getString("name"));
				author.setAge(rs.getString("age"));
				author.setCountry(rs.getString("country"));
				
				authorList.add(author);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("authorList", authorList);
		return ActionSupport.SUCCESS;
	}
	
}
