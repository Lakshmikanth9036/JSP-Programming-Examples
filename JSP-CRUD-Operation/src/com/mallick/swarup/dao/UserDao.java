package com.mallick.swarup.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mallick.swarup.domain.UserDomain;

public class UserDao {
	public static Connection getConnection(){
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/swarup","root","password");
		}catch(Exception ex){
			System.out.println(ex);
		}
		return con;
	}
public static int save(UserDomain u){
	int status = 0;
	try{
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("insert into register(name,password,email,sex,country) values(?,?,?,?,?)");
		ps.setString(1, u.getName());
		ps.setString(2, u.getPassword());
		ps.setString(3, u.getEmail());
		ps.setString(4, u.getSex());
		ps.setString(5, u.getCountry());
		status = ps.executeUpdate();
	}catch(Exception ex){
		System.out.println(ex);
	}
	return status;
}
public static int update(UserDomain u){
	int status = 0;
	try{
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("update register set name=?,password=?,email=?,sex=?,country=? where id=?");
		ps.setString(1, u.getName());
		ps.setString(2, u.getPassword());
		ps.setString(3, u.getEmail());
		ps.setString(4, u.getSex());
		ps.setString(5, u.getCountry());
		ps.setInt(6, u.getId());
		status = ps.executeUpdate();
	}catch(Exception ex){
		System.out.println(ex);
	}
	return status;
}
public static int delete(UserDomain u){
	int status = 0;
	try{
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("delete from register where id=?");
		ps.setInt(1, u.getId());
		status = ps.executeUpdate();
	}catch(Exception ex){
		System.out.println(ex);
	}
	return status;
}
public static List<UserDomain> getAllRecords(){
	List<UserDomain> list = new ArrayList<UserDomain>();
	try{
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("select * from register");
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			UserDomain u = new UserDomain();
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setPassword(rs.getString("password"));
			u.setEmail(rs.getString("email"));
			u.setSex(rs.getString("sex"));
			u.setCountry(rs.getString("country"));
			list.add(u);
		}
	}catch(Exception ex){
		System.out.println(ex);
	}
	return list;
}
public static UserDomain getRecordById(int id){
	UserDomain u = null;
	try{
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("select * from register where id=?");
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			u = new UserDomain();
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setPassword(rs.getString("password"));
			u.setEmail(rs.getString("email"));
			u.setSex(rs.getString("sex"));
			u.setCountry(rs.getString("country"));
		}
	}catch(Exception ex){
		System.out.println(ex);
	}
	return u;
}
}
