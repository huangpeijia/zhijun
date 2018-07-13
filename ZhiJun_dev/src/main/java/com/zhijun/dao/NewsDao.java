package com.zhijun.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.zhijun.base.DateOrString;
import com.zhijun.bean.About;
import com.zhijun.bean.News;

/**
 * 新闻
 * @author hpj
 * @version 2018年7月10日
 */
public class NewsDao {
	//提供数据库访问操作类
	private JdbcTemplate jdbcTemplate;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	/**
	 * 查询总数
	 * 方法
	 * @author hpj
	 * @version 2018年7月12日
	 */
	public int countAll() {
		String sql = "select count(*) from news";
		Integer count =jdbcTemplate.queryForObject(sql , Integer.class);  
		return count;
		
	}
	/**
	 * 查询所有
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	public List<News> queryAll(int pages, int keys){
		String sql = "select news_id, news_titile, news_constant, news_type, news_time from news order by news_time limit "+pages+","+keys+"";
		List<News> list=jdbcTemplate.query(sql,new NewsMapper());
		return list;
	}
	/**
	 * 添加
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	public int addNews(News news) {
		String sql = "insert into news(news_titile, news_constant, news_type, news_time) value(?,?,?,?)";
		return jdbcTemplate.update(sql,new Object[] {news.getNews_title(),news.getNews_constant(),news.getNews_type(),news.getNews_time()});
	}
	/**
	 * 删除
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	public int deleteNews(int news_id) {
		String sql = "delete from news where news_id=?";
		return jdbcTemplate.update(sql, new Object[] {news_id});
	}
	/**
	 * 查询一条数据
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	public List<News> query(int news_id) {
		String sql = "select news_id, news_titile, news_constant, news_type,news_time from news where news_id="+news_id+"";
		List<News> list = jdbcTemplate.query(sql, new NewsMapper());
		return list;
	}
	/**
	 * 修改
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	public int update(News news) {
		String sql = "update news set news_titile=?,news_constant=?,news_type=?,news_time=? where news_id=?";
		return jdbcTemplate.update(sql,new Object[] {news.getNews_title(),news.getNews_constant(),news.getNews_type(),news.getNews_time(),news.getNews_id()});
	}
	public class NewsMapper implements RowMapper<News>{

		public News mapRow(ResultSet rs, int rowNum) throws SQLException {
			News news = new News();
			news.setNews_id(rs.getInt("news_id"));
			news.setNews_title(rs.getString("news_titile"));
			news.setNews_constant(rs.getString("news_constant"));
			news.setNews_type(rs.getInt("news_type"));
			news.setNews_time(rs.getTimestamp("news_time"));
			return news;
		}
		
	}
}
