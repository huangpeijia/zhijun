package com.zhijun.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.zhijun.base.DateOrString;
import com.zhijun.bean.About;
import com.zhijun.bean.Information;
import com.zhijun.dao.AboutDao.AboutMapper;

/**
 * 公司信息表
 * @author hpj
 * @version 2018年7月9日
 */
public class InformationDao {
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
	 */
	public List<Information> queryAll(){
		String sql = "SELECT com_id, com_name, com_logo, com_contact,com_number,com_address, com_code, com_fax, com_email, com_copyright, com_profile,com_backdrop, com_time from information";
		List<Information> list =jdbcTemplate.query(sql, new InformationMapper() );
		return list;
	}
	/**
	 * 添加
	 * 方法
	 * @version 2018年7月9日
	 */
	public int addInf(Information inf) {
		String sql ="insert into information(com_name, com_logo, com_contact,com_number,com_address, com_code, com_fax, com_email, com_copyright, com_profile,com_backdrop, com_time) value(?,?,?,?,?,?,?,?,?,?,?)";
		return jdbcTemplate.update(sql,new Object[] {inf.getCom_name(),inf.getCom_logo(),inf.getCom_contact(),inf.getCom_number(),inf.getCom_address(),inf.getCom_code(),inf.getCom_fax(),inf.getCom_email(),inf.getCom_copyright(),inf.getCom_profile(),inf.getCom_backdrop(),inf.getCom_time()});
	}
	/**
	 * 删除
	 * 方法
	 * @version 2018年7月9日
	 */
	public int deleteInf(int com_id) {
		String sql = "delete from Information where com_id=?";
		return jdbcTemplate.update(sql,new Object[] {com_id});
	}
	/**
	 * 查询
	 * 方法
	 * @version 2018年7月9日
	 */
	public List<Information> query(int com_id) {
		String sql ="SELECT com_id, com_name, com_logo, com_contact,com_number,com_address, com_code, com_fax, com_email, com_copyright, com_profile,com_backdrop, com_time from information where com_id="+com_id+"";
		List<Information> list =jdbcTemplate.query(sql, new InformationMapper());
		return list;
	}
	/**
	 * 修改
	 * 方法
	 * @version 2018年7月9日
	 */
	public int update(Information inf) {
		String sql = "update information set com_name=?,com_logo=?,com_contact=?,com_number=?,com_address=?,com_code=?,com_fax=?,com_email=?,com_copyright=?,com_profile=?,com_backdrop=?,com_time=? where com_id=?";
		return jdbcTemplate.update(sql,new Object[] {inf.getCom_name(),inf.getCom_logo(),inf.getCom_contact(),inf.getCom_number(),inf.getCom_address(),inf.getCom_code(),inf.getCom_fax(),inf.getCom_email(),inf.getCom_copyright(),inf.getCom_profile(),inf.getCom_backdrop(),inf.getCom_time(),inf.getCom_id()});
	}
	
	public class InformationMapper implements RowMapper<Information>{

		public Information mapRow(ResultSet rs, int rowNum) throws SQLException {
			Information inf = new Information();
			inf.setCom_id(rs.getInt("com_id"));
			inf.setCom_name(rs.getString("com_name"));
			inf.setCom_logo(rs.getString("com_logo"));
			inf.setCom_contact(rs.getString("com_contact"));
			inf.setCom_number(rs.getString("com_number"));
			inf.setCom_address(rs.getString("com_address"));
			inf.setCom_code(rs.getString("com_code"));
			inf.setCom_fax(rs.getString("com_fax"));
			inf.setCom_email(rs.getString("com_email"));
			inf.setCom_copyright(rs.getString("com_copyright"));
			inf.setCom_profile(rs.getString("com_profile"));
			inf.setCom_backdrop(rs.getString("com_backdrop"));
			inf.setCom_time(rs.getTimestamp("com_time"));
			return inf;
		}
		
	}
}
