package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;



public interface AttendanceStatisticsService {
	@Transactional
	
	//考勤统计
	public List<Map<String,Object>> selectas();

	//根据id查询外出表
	public List<Map<String,Object>> selectout(int staffid);
	//根据id查询出差表
	public List<Map<String,Object>> selecttra(int staffid);
	//根据id查询请假表
	public List<Map<String,Object>> selectvoc(int staffid);
	//根据id查询上班登记表
	public List<Map<String,Object>> selectreg(int staffid);
	//次数统计
	public List<Map<String,Object>> selectcishu();

}
