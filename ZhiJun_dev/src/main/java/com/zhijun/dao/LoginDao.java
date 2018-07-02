package com.zhijun.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.zhijun.bean.Login;

/**
 * 登陆后台系统的dao层用于查询登陆用户名和密码是否正确
 * @author administrator_2018
 * @date 2018年3月26日
 */
public class LoginDao {

	// 提供数据库访问操作类
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	//查询登陆用户是否存在
	public boolean loginsystem(String username,String userpassword) {
		String sql = "select * from admin where username=? and userpassword=?";
		List<Login> list = jdbcTemplate.query(sql, new Object[] {username, userpassword},new LoginMapper());
		if(list.size() > 0) {
			return true;
		}
		return false;
	}
	
	public class LoginMapper implements RowMapper<Login>{

		public Login mapRow(ResultSet rs, int rowNum) throws SQLException {
			Login login = new Login();
			login.setId(rs.getInt("id"));
			login.setUsername(rs.getString("username"));
			login.setUserpassword(rs.getString("userpassword"));
			return login;
		}
		
	}
}
