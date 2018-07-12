package com.zhijun.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.zhijun.base.DateOrString;
import com.zhijun.bean.About;
import com.zhijun.bean.Recruitment;

/**
 * 人才招聘
 * @author hpj
 * @version 2018年7月10日
 */
public class RecruitmentDao {
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
		String sql = "select count(*) from recruitment";
		Integer count =jdbcTemplate.queryForObject(sql , Integer.class);  
		return count;
		
	}
	/**
	 * 查询所有
	 * 方法
	 * @version 2018年7月10日
	 */
	public List<Recruitment> queryAll(int pages, int keys){
		String sql ="select rec_id, rec_name, rec_num, rec_address, rec_claim, rec_salary, rec_time from recruitment order by rec_time desc limit "+pages+","+keys+"";
		List<Recruitment> list =jdbcTemplate.query(sql, new RecruitmentMapper());
		return list;
		
	}
	/**
	 * 添加
	 * 方法
	 * @version 2018年7月10日
	 */
	public int addRec(Recruitment rec) {
		String sql = "insert into recruitment(rec_name, rec_num, rec_address, rec_claim, rec_salary, rec_time) value(?,?,?,?,?,?)";
		return jdbcTemplate.update(sql,new Object[] {rec.getRec_name(),rec.getRec_num(),rec.getRec_address(),rec.getRec_claim(),rec.getRec_salary(),rec.getRec_time()});
	}
	/**
	 * 删除
	 * 方法
	 * @version 2018年7月10日
	 */
	public int deleteRec(int rec_id) {
		String sql = "delete from recruitment where rec_id=?";
		return jdbcTemplate.update(sql,new Object[] {rec_id});
		
	}
	/**
	 * 查询一条记录
	 * 方法
	 * @version 2018年7月10日
	 */
	public List<Recruitment>query(int rec_id) {
		String sql = "select rec_id, rec_name, rec_num, rec_address, rec_claim, rec_salary, rec_time from recruitment where rec_id="+rec_id+"";
		List<Recruitment> list = jdbcTemplate.query(sql,new RecruitmentMapper());
		return list;
	}
	/**
	 * 修改
	 * 方法
	 * @version 2018年7月10日
	 */
	public int update(Recruitment rec) {
		String sql = "update recruitment set rec_name=?, rec_num=?, rec_address=?, rec_claim=?, rec_salary=?, rec_time=? where rec_id=?";
		return jdbcTemplate.update(sql, new Object[] {rec.getRec_name(),rec.getRec_num(),rec.getRec_address(),rec.getRec_claim(),rec.getRec_salary(),rec.getRec_time(),rec.getRec_id()});
	}
	public class RecruitmentMapper implements RowMapper<Recruitment>{

		public Recruitment mapRow(ResultSet rs, int rowNum) throws SQLException {
			Recruitment rec = new Recruitment();
			rec.setRec_id(rs.getInt("rec_id"));
			rec.setRec_name(rs.getString("rec_name"));
			rec.setRec_num(rs.getString("rec_num"));
			rec.setRec_address(rs.getString("rec_address"));
			rec.setRec_claim(rs.getString("rec_claim"));
			rec.setRec_salary(rs.getString("rec_salary"));
			rec.setRec_time(rs.getTimestamp("rec_time"));
			return rec;
		}
		
	}
}
