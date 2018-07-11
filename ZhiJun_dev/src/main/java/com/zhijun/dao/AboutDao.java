package com.zhijun.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.zhijun.base.DateOrString;
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
	/**
	 * 查询所有
	 * 方法
	 */
	public List<About> queryAll(){
		String sql ="select about_id, about_profile, about_scope, about_products, about_culture, about_prospects,about_time from about";
		List<About> list=jdbcTemplate.query(sql, new AboutMapper());
		return list; 
	}
	/**
	 * 添加关于我们
	 * @author hpj
	 * @version 2018年7月9日
	 */
	public int addAbout(About about) {
		String sql= "insert into about(about_profile,about_scope,about_products,about_culture,about_prospects,about_time) value(?,?,?,?,?,?)";
		return jdbcTemplate.update(sql,new Object[] {about.getAbout_profile(),about.getAbout_scope(),about.getAbout_products(),about.getAbout_culture(),about.getAbout_prospects(),about.getAbout_time()});
	}
	/**
	 * 删除
	 * 方法
	 */
	public int deleteAbout(int about_id) {
		String sql = "delete from about where about_id=?";
		return jdbcTemplate.update(sql,new Object[] {about_id});
	}
	/**
	 * 查询一条记录
	 * 方法
	 */
	public List<About> query(int about_id) {
		String sql = "select about_id, about_profile, about_scope, about_products, about_culture, about_prospects,about_time from about where about_id="+about_id+"";
		List<About> list =jdbcTemplate.query(sql, new AboutMapper());
		return list;
	}
	/**
	 * 修改
	 * 方法
	 */
	public int update(About about){
		String sql = "update about set about_profile=?,about_scope=?,about_products=?, about_culture=?, about_prospects=?, about_time=? where about_id=?";
		return jdbcTemplate.update(sql,new Object[] {about.getAbout_profile(),about.getAbout_scope(),about.getAbout_products(),about.getAbout_culture(),about.getAbout_prospects(),about.getAbout_time(),about.getAbout_id()});
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
			about.setAbout_time(rs.getTimestamp("about_time"));
			return about;
		}
		
	}
	
}
