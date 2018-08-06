package com.zhijun.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.zhijun.base.DateOrString;
import com.zhijun.bean.About;
import com.zhijun.bean.Cases;
import com.zhijun.bean.News;
import com.zhijun.dao.NewsDao.NewsMapper;

/**
 * 案例表
 * @author hpj
 * @version 2018年7月9日
 */
public class CaseDao {
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
		String sql = "select count(*) from cases";
		Integer count =jdbcTemplate.queryForObject(sql , Integer.class);  
		return count;
		
	}
	/**
	 * 查询所有
	 * 方法
	 */
	public List<Cases> queryAll(int pages, int keys){
		String sql = "select case_id, case_name, case_constant, case_photo, case_time from cases order by case_time desc limit  "+pages+","+keys+"";
		List<Cases> list = jdbcTemplate.query(sql, new CaseMapper());
		return list;
	}
	/**
	 * 添加
	 * 方法
	 * @version 2018年7月9日
	 */
	public int addCases(Cases cases) {
		String sql = "insert into cases(case_name, case_constant, case_photo, case_time) value(?,?,?,?)";
		return jdbcTemplate.update(sql,new Object[] {cases.getCase_name(), cases.getCase_constant(), cases.getCase_photo(),cases.getCase_time()});
	}
	/**
	 * 删除
	 * 方法
	 * @version 2018年7月9日
	 */
	public int deleteCases(int case_id) {
		String sql = "delete from cases where case_id=?";
		return jdbcTemplate.update(sql, new Object[] {case_id});
	}
	/**
	 * 查询一条信息
	 * 方法
	 * @version 2018年7月9日
	 */
	public List<Cases> query(int case_id) {
		String sql = "select case_id, case_name, case_constant, case_photo, case_time from cases where case_id="+case_id+"";
		List<Cases> list = jdbcTemplate.query(sql, new CaseMapper());
		return list;
	}
	/**
	 * 修改
	 * 方法
	 * @version 2018年7月9日
	 */
	public int update(Cases cases) {
		String sql = "update cases set case_name=?, case_constant=?, case_photo=?, case_time=? where case_id=?";
		return jdbcTemplate.update(sql, new Object[] {cases.getCase_name(), cases.getCase_constant(), cases.getCase_photo(),cases.getCase_time(),cases.getCase_id()});
	} 
	
	public class CaseMapper implements RowMapper<Cases>{

		public Cases mapRow(ResultSet rs, int rowNum) throws SQLException {
			Cases cases=new Cases();
			cases.setCase_id(rs.getInt("case_id"));
			cases.setCase_name(rs.getString("case_name"));
			cases.setCase_constant(rs.getString("case_constant"));
			cases.setCase_photo(rs.getString("case_photo"));
			cases.setCase_time(rs.getTimestamp("case_time"));
			return cases;
			
		}
		
	}
	/**
	 * 查询前几条数据
	 * 方法
	 * @author wzh
	 * @version 2018年7月20日
	 */
	public List<Cases> queryCase(int num){
		String sql = "select case_id, case_name, case_constant, case_photo, case_time from cases order by case_time desc limit "+num+"";
		List<Cases> list=jdbcTemplate.query(sql,new CaseMapper());
		return list;
	}
	
}
