package com.zhijun.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.zhijun.base.DateOrString;
import com.zhijun.bean.News;
import com.zhijun.bean.Product;

/**
 * 产品服务
 * @author hpj
 * @version 2018年7月10日
 */
public class ProductDao {
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
	public List<Product> queryAll(){
		String sql ="select pro_id, pro_name, pro_constant, pro_photo, pro_time, pro_type from product";
		List<Product> list =jdbcTemplate.query(sql, new ProductMapper());
		return list;
	}
	/**
	 * 添加
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	public int addProduct(Product pro) {
		String sql = "insert into product(pro_name, pro_constant, pro_photo, pro_type, pro_time) value(?,?,?,?,?)";
		return jdbcTemplate.update(sql,new Object[] {pro.getPro_name(),pro.getPro_constant(),pro.getPro_photo(),pro.getPro_type(),pro.getPro_time()});
	}
	/**
	 * 删除
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	public int deleteProduct(int pro_id) {
		String sql = "delete from product where pro_id=?";
		return jdbcTemplate.update(sql,new Object[] {pro_id});
	}
	/**
	 * 查询一条数据
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	public List<Product> query(int pro_id) {
		String sql = "select pro_id, pro_name, pro_constant, pro_photo, pro_time, pro_type from product where pro_id="+pro_id+"";
		List<Product> list =jdbcTemplate.query(sql, new ProductMapper());
		return list;
	}
	/**
	 * 修改
	 * 方法
	 * @author hpj
	 * @version 2018年7月10日
	 */
	public int update(Product pro) {
		String sql = "update product set pro_name=?, pro_constant=?, pro_photo=?, pro_type=?,pro_time=? where pro_id=?";
		return jdbcTemplate.update(sql, new Object[] {pro.getPro_name(),pro.getPro_constant(),pro.getPro_photo(),pro.getPro_type(),pro.getPro_time(),pro.getPro_id()});
	}
	public class ProductMapper implements RowMapper<Product>{

		public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
			Product pro = new Product();
			pro.setPro_id(rs.getInt("pro_id"));
			pro.setPro_name(rs.getString("pro_name"));
			pro.setPro_constant(rs.getString("pro_constant"));
			pro.setPro_photo(rs.getString("pro_photo"));
			pro.setPro_type(rs.getInt("pro_type"));
			pro.setPro_time(rs.getDate("pro_time"));
			return pro;
		}
		
	}
}
