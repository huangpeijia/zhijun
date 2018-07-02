package com.zhijun.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.zhijun.bean.Student;
 
/**
 * Student类 增删改实现
 * @author administrator_2018
 * @date 2018年3月26日
 */
public class StudentDao {
	//提供数据库访问操作类
	private JdbcTemplate jdbcTemplate;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	//查询所有学生
	public List<Student> queryAll(){
		String sql = "select id,stuname,stunumbers from student";
//		System.out.println("queryAll:1");
		List<Student> list = jdbcTemplate.query(sql, new StudentMapper());
		/*for(Student student : list) {
			System.out.println(student.getName());
		}*/
		return list;
	}
	
	//添加学生
	public int addStu(Student student) {
		String sql = "insert into student(stuname,stunumbers) value(?,?)";
		return jdbcTemplate.update(sql, new Object[] {student.getStuname(),student.getStunumbers()});
	}
	
	//删除学生
	public int deleteStu(int id) {
		String sql = "delete from student where id=?";
		return jdbcTemplate.update(sql,new Object[] {id});
	}
	
	public List<Student> query(int id) {
		String sql = "select * from student where id="+id+"";
		List<Student> list = jdbcTemplate.query(sql, new StudentMapper());
		return list;
	}
	
	public int update(Student student) {
		String sql = "update student set stuname=?,stunumbers=? where id=?";
		return jdbcTemplate.update(sql,new Object[] {student.getStuname(),student.getStunumbers(),student.getId()});
	}
	
	public class StudentMapper implements RowMapper<Student>{

		public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
//			System.out.println("StudengMapper:1");
			Student student = new Student();
			student.setId(rs.getInt("id"));
			student.setStuname(rs.getString("stuname"));
			student.setStunumbers(rs.getInt("stunumbers"));
//			System.out.println("StudengMapper:2");
			return student;
		}
		
	}
}
