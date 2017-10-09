package com.service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.DB;
import com.orm.Tauthor;
import com.orm.Tgoods;


public class liuService
{
	
	
	public static Tgoods getGoods(String id)
	{
		Tgoods goods=new Tgoods();
		String ddd="3333333";
		
		String sql="select * from t_goods where id=?";
		Object[] params={id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			rs.next();
			
			goods.setId(rs.getString("id"));
			goods.setIsbn(rs.getString("isbn"));
			goods.setMingcheng(rs.getString("mingcheng"));
			goods.setAuthor_id(rs.getString("author_id"));
			
			goods.setPublisher(rs.getString("publisher"));
			goods.setPublishDate(rs.getString("publishDate"));
			goods.setPrice(rs.getString("price"));
			
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		return goods;
	}
	
	
	
	public static Tauthor getAuthor(String id)
	{
		Tauthor author=new Tauthor();
		
		String sql="select * from t_author where id=?";
		Object[] params={id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			rs.next();
			
			author.setId(rs.getString("id"));
			author.setName(rs.getString("name"));
			author.setAge(rs.getString("age"));
			author.setCountry(rs.getString("country"));
			
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		return author;
	}
	
	
}
