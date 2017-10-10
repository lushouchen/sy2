package com.action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.DB;
import com.opensymphony.xwork2.ActionSupport;
import com.orm.Tgoods;
import com.service.liuService;


public class goods_action extends ActionSupport
{
	public String goodsAdd()
	{
		HttpServletRequest req=ServletActionContext.getRequest();
		int n=0;
		String id=String.valueOf(new Date().getTime());
		String isbn=req.getParameter("isbn");
		String mingcheng=req.getParameter("mingcheng");
		String author_id=req.getParameter("author_id");
		
		String publisher=req.getParameter("publisher");
		String publishDate=req.getParameter("publishDate");
		String price=req.getParameter("price");
		


		String sql="insert into t_goods(id,isbn,mingcheng,author_id,publisher,publishDate,price) " +
				   "values(?,?,?,?,?,?,?)";
		Object[] params={id,isbn,mingcheng,author_id,publisher,publishDate,price};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "操作成功");
		return "msg";
	}
	
	
	public String goodsMana()
	{
		HttpServletRequest req=ServletActionContext.getRequest();
		
		List goodsList=new ArrayList();
		String sql="select * from t_goods";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tgoods goods=new Tgoods();
				
				goods.setId(rs.getString("id"));
				goods.setIsbn(rs.getString("isbn"));
				goods.setMingcheng(rs.getString("mingcheng"));
				goods.setAuthor_id(rs.getString("author_id"));
				
				goods.setPublisher(rs.getString("publisher"));
				goods.setPublishDate(rs.getString("publishDate"));
				goods.setPrice(rs.getString("price"));
				
				goods.setAuthor(liuService.getAuthor(rs.getString("author_id")));
				
				goodsList.add(goods);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("goodsList", goodsList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String goodsDel()
	{
		HttpServletRequest req=ServletActionContext.getRequest();
		
		String id=req.getParameter("id");
		String sql="delete from t_goods where id="+id;
		Object[] params={};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "信息删除完毕");
		return "msg";
	}
	
	
	public String goodsDetailHou()
	{
		HttpServletRequest req=ServletActionContext.getRequest();
		
		String id=req.getParameter("id");
		Tgoods goods=liuService.getGoods(id);
		goods.setAuthor(liuService.getAuthor(goods.getAuthor_id()));
		
		req.setAttribute("goods", goods);
		return ActionSupport.SUCCESS;
	}
	
	public String goodsRes()
	{
		HttpServletRequest req=ServletActionContext.getRequest();
		String author_id=req.getParameter("author_id");
		List goodsList=new ArrayList();
		String sql="select * from t_goods where author_id like '%"+author_id+"%'";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tgoods goods=new Tgoods();
				
				goods.setId(rs.getString("id"));
				goods.setIsbn(rs.getString("isbn"));
				goods.setMingcheng(rs.getString("mingcheng"));
				goods.setAuthor_id(rs.getString("author_id"));
				
				goods.setPublisher(rs.getString("publisher"));
				goods.setPublishDate(rs.getString("publishDate"));
				goods.setPrice(rs.getString("price"));
				
				goods.setAuthor(liuService.getAuthor(rs.getString("author_id")));
				
				goodsList.add(goods);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("goodsList", goodsList);
		return ActionSupport.SUCCESS;
	}
	
}
