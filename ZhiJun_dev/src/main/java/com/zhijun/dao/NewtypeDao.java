package com.zhijun.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.zhijun.bean.News;
import com.zhijun.bean.Newtype;
import com.zhijun.bean.Protype;
import com.zhijun.dao.ProtypeDao.ProtypeMapper;

/**
 * 新闻类型
 * @author Administer
 *
 */
public class NewtypeDao {
	//提供数据库访问操作类
	private JdbcTemplate jdbcTemplate;
			
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	/**
	 * 查询所有新闻数据
	 * @return
	 */
	public List<Newtype> queryAll(int pages, int keys){
		String sql ="select newtype_id,newtype_name from newtype limit "+pages+","+keys+"";
		List<Newtype> list = jdbcTemplate.query(sql,new NewtypeMapper());
		return list;
		
	}
	/**
	 * 查询所有新闻类型
	 * @return
	 */
	public List<Newtype> querytypeAll(){
		String sql ="select newtype_id,newtype_name from newtype";
		List<Newtype> list = jdbcTemplate.query(sql,new NewtypeMapper());
		return list;
		
	}
	/**
	 * 查询总数
	 * 方法 
	 */
	public int countAll() {
		String sql = "select count(*) from newtype";
		Integer count =jdbcTemplate.queryForObject(sql , Integer.class);  
		return count;
		
	}
	/**
	 * 查询名称
	 * @author Administer
	 *
	 */
	public List<Newtype> select_one(int new_id){
		String sql = "select newtype_id,newtype_name from newtype where newtype_id="+new_id+""; 
		List<Newtype> list = jdbcTemplate.query(sql,new NewtypeMapper());
		return list;
		
	}
	//添加
	public int add(Newtype newtype) {
		String sql = "insert into newtype(newtype_name) value(?)";
		return jdbcTemplate.update(sql,new Object[] {newtype.getNewtype_name()});
	}
	//删除
	public int delete(int newtype_id) {
		String sql = "delete from newtype where newtype_id=?";
		return jdbcTemplate.update(sql, new Object[] {newtype_id});
	}
	//修改
	public int update(Newtype newtype) {
		String sql = "update newtype set newtype_name=? where newtype_id=?";
		return jdbcTemplate.update(sql,new Object[] {newtype.getNewtype_name(),newtype.getNewtype_id()});
	}
	public class NewtypeMapper implements RowMapper<Newtype>{
		public Newtype mapRow(ResultSet rs, int rowNum) throws SQLException{
			Newtype newtype = new Newtype(); 
			newtype.setNewtype_id(rs.getInt("newtype_id"));
			newtype.setNewtype_name(rs.getString("newtype_name"));
			return newtype;
		}
	}
	
	
	
}
