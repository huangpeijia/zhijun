package com.zhijun.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.zhijun.base.DateOrString;
import com.zhijun.bean.Product;
import com.zhijun.bean.Qualification;

/**
 * 公司资质
 * @author hpj
 * @version 2018年7月10日
 */
public class QualificationDao {
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
	 * @author hpj
	 * @version 2018年7月10日
	 */
	public List<Qualification> queryAll(){
		String sql = "SELECT qua_id, qua_name, qua_photo, qua_constant, qua_time FROM qualification";
		List<Qualification> list= jdbcTemplate.query(sql, new QualificationMapper());
		return list;
	}
	/**
	 * 添加
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	public int addQua(Qualification qua) {
		String sql = "insert into qualification(qua_name,qua_photo,qua_constant,qua_time) value(?,?,?,?)";
 		return jdbcTemplate.update(sql,new Object[] {qua.getQua_name(),qua.getQua_photo(),qua.getQua_constant(),qua.getQua_time()});
	}
	/**
	 * 删除
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	public int deleteProduct(int qua_id) {
		String sql = "delete from qualification where qua_id=?";
		return jdbcTemplate.update(sql,new Object[] {qua_id});
	}
	/**
	 * 查询一条数据
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	public List<Qualification> query(int qua_id) {
		String sql = "SELECT qua_id, qua_name, qua_photo, qua_constant, qua_time FROM qualification where qua_id="+qua_id+"";
		List<Qualification> list =jdbcTemplate.query(sql, new QualificationMapper());
		return list;
	}
	/**
	 * 修改
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	public int update(Qualification qua) {
		String sql = "update qualification set qua_name=?, qua_photo=?, qua_constant=?,qua_time=? where qua_id=?";
		return jdbcTemplate.update(sql,new Object[] {qua.getQua_name(),qua.getQua_photo(),qua.getQua_constant(),qua.getQua_time(),qua.getQua_id()});
	}
	
	public class QualificationMapper implements RowMapper<Qualification>{

		public Qualification mapRow(ResultSet rs, int rowNum) throws SQLException {
			Qualification qua = new Qualification();
			qua.setQua_id(rs.getInt("qua_id"));
			qua.setQua_name(rs.getString("qua_name"));
			qua.setQua_photo(rs.getString("qua_photo"));
			qua.setQua_constant(rs.getString("qua_constant")); 
			qua.setQua_time(rs.getTimestamp("qua_time"));
			return qua;
		}
		
	}
}
