package com.exampl.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.exampl.model.User;

public class UserDao {
	private static UserDao ud = new UserDao();

	private UserDao() {
	}
	
	public static UserDao getUserDao(){
		return ud;
	}

	public int insert(User u) {
		int i = 0;
		try {
			PreparedStatement ps = Dao.getConnection().prepareStatement("insert into users values(?,?,?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getUname());
			ps.setString(3, u.getPass());
			ps.setString(4, u.getMobile());
			ps.setString(5, u.getEmail());
			i = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}
	
	public User login(String uname,String pass){
		User u=null;
		try{
			PreparedStatement ps=Dao.getConnection().prepareStatement("select * from users where uname=? and pass=?");
			ps.setString(1,uname);
			ps.setString(2,pass);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				u=new User();
				u.setName(rs.getString(1));
				u.setUname(rs.getString(2));
				u.setPass(rs.getString(3));
				u.setMobile(rs.getString(4));
				u.setEmail(rs.getString(5));
			}
		}catch (Exception e) {
		System.out.println(e);
		}
		return u;
	}

}
