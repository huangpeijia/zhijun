package com.zhijun.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.zhijun.bean.Casetype;
import com.zhijun.bean.Protype;
import com.zhijun.dao.ProtypeDao.ProtypeMapper;

/**
 * 案例类型表
 * @author Administer
 *
 */
public class CasetypeDao {
	//提供数据库访问操作类
	private JdbcTemplate jdbcTemplate;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	/**
	 * 查询所有案例类型
	 * @return
	 */
	public List<Casetype> queryAll(int pages, int keys){
		String sql ="select casetype_id,casetype_name from casetype limit "+pages+","+keys+"";
		List<Casetype> list = jdbcTemplate.query(sql,new CasetypeMapper());
		return list;
		
	}
	/**
	 * 查询名称
	 * @author Administer
	 *
	 */
	public List<Casetype> select_one(int case_id){
		String sql = "select casetype_id,casetype_name from casetype where casetype_id="+case_id+""; 
		List<Casetype> list = jdbcTemplate.query(sql,new CasetypeMapper());
		return list;
		
	}
	//查询数量
		public int countAll() {
			String sql = "select count(*) from casetype";
			Integer count =jdbcTemplate.queryForObject(sql , Integer.class);  
			return count;
			
		}
		//添加
		public int add(Casetype casetype) {
			String sql = "insert into casetype(casetype_name) value(?)";
			return jdbcTemplate.update(sql,new Object[] {casetype.getCasetype_name()});
		}
		//删除
		public int delete(int casetype_id) {
			String sql = "delete from casetype where casetype_id=?";
			return jdbcTemplate.update(sql, new Object[] {casetype_id});
		}
		//修改
		public int update(Casetype casetype) {
			String sql = "update casetype set casetype_name=? where casetype_id=?";
			return jdbcTemplate.update(sql,new Object[] {casetype.getCasetype_name(),casetype.getCasetype_id()});
		}
	public class CasetypeMapper implements RowMapper<Casetype>{
		public Casetype mapRow(ResultSet rs, int rowNum) throws SQLException {
			Casetype casetype= new Casetype(); 
			casetype.setCasetype_id(rs.getInt("casetype_id"));
			casetype.setCasetype_name(rs.getString("casetype_name"));
			return casetype;
		}
	}
}
