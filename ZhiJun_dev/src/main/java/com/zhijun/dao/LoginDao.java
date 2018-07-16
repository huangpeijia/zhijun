package com.zhijun.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.zhijun.bean.Login;
import com.zhijun.bean.Recruitment;
import com.zhijun.dao.RecruitmentDao.RecruitmentMapper;

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
	
	/**
	 * 查询一条记录
	 * 方法
	 * @version 2018年7月10日
	 */
	public List<Login>query(int user_id) {
		String sql = "select id, username, userpassword from admin where id="+user_id+"";
		List<Login> list = jdbcTemplate.query(sql,new LoginMapper());
		return list;
	}
	/**
	 * 修改密码
	 * 方法
	 * @version 2018年7月16日
	 */
	public int update(String userpassword) {
		String sql = "update admin set userpassword=? where id=?";
		return jdbcTemplate.update(sql, new Object[] {userpassword,1});
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
