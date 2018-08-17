package com.zhijun.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.zhijun.bean.Protype;

public class ProtypeDao {
	//提供数据库访问操作类
		private JdbcTemplate jdbcTemplate;
		
		public JdbcTemplate getJdbcTemplate() {
			return jdbcTemplate;
		}
		public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
			this.jdbcTemplate = jdbcTemplate;
		}
	/**
	 * 查询所有产品类型
	 * @return
	 */
	public List<Protype> queryAll(){
		String sql ="select protype_id,protype_name from protype";
		List<Protype> list = jdbcTemplate.query(sql,new ProtypeMapper());
		return list;
		
	}
	/**
	 * 查询名称
	 * @author Administer
	 *
	 */
	public List<Protype> select_one(int pro_id){
		String sql = "select protype_id,protype_name from protype where protype_id="+pro_id+""; 
		List<Protype> list = jdbcTemplate.query(sql,new ProtypeMapper());
		return list;
		
	}
	public class ProtypeMapper implements RowMapper<Protype>{
		public Protype mapRow(ResultSet rs, int rowNum) throws SQLException{
			Protype protype= new Protype(); 
			protype.setProtype_id(rs.getInt("protype_id"));
			protype.setProtype_name(rs.getString("protype_name"));
			return protype;
		}
	}
	
}
