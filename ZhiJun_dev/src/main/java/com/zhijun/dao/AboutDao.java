package com.zhijun.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.zhijun.bean.About;
import com.zhijun.bean.Student;
/**
 * 关于我们dao
 * @author hpj
 * @version 2018年7月6日
 */
public class AboutDao {
	//提供数据库访问操作类
	private JdbcTemplate jdbcTemplate;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	public List<About> queryAll(){
		String sql ="select about_id, about_profile, about_scope, about_products, about_culture, about_prospects,about_time from about";
		List<About> list=jdbcTemplate.query(sql, new AboutMapper());
		return list; 
	}
	
	public class AboutMapper implements RowMapper<About>{

		public About mapRow(ResultSet rs, int rowNum) throws SQLException {
			About about = new About();
			about.setAbout_id(rs.getInt("about_id"));
			about.setAbout_profile(rs.getString("about_profile"));
			about.setAbout_scope(rs.getString("about_scope"));
			about.setAbout_products(rs.getString("about_products"));
			about.setAbout_culture(rs.getString("about_culture"));
			about.setAbout_prospects(rs.getString("about_prospects"));
			about.setAbout_time(rs.getDate("about_time"));
			return about;
		}
		
	}
	
}
