package com.zhijun.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

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
	 * 查询所有新闻类型
	 * @return
	 */
	public List<Newtype> queryAll(){
		String sql ="select id,newtype_id,newtype_name from newtype";
		List<Newtype> list = jdbcTemplate.query(sql,new NewtypeMapper());
		return list;
		
	}
	/**
	 * 查询名称
	 * @author Administer
	 *
	 */
	public List<Newtype> select_one(int new_id){
		String sql = "select id,newtype_id,newtype_name from newtype where newtype_id="+new_id+""; 
		List<Newtype> list = jdbcTemplate.query(sql,new NewtypeMapper());
		return list;
		
	}
	public class NewtypeMapper implements RowMapper<Newtype>{
		public Newtype mapRow(ResultSet rs, int rowNum) throws SQLException{
			Newtype newtype = new Newtype();
			newtype.setId(rs.getInt("id"));
			newtype.setNewtype_id(rs.getInt("newtype_id"));
			newtype.setNewtype_name(rs.getString("newtype_name"));
			return newtype;
		}
	}
	
	
	
}
