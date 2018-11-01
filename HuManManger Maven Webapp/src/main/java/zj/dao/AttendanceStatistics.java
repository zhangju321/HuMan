package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.hr_go_out;
import zj.entity.travel;
import zj.entity.vocation;
import zj.entity.work_register;

public interface AttendanceStatistics {
	
	//考勤统计
	public List<Map<String,Object>> selectas();
	//根据id查询外出表
	public List<hr_go_out> selectout(int staffid);
	//根据id查询出差表
	public List<travel> selecttra(int staffid);
	//根据id查询请假表
	public List<vocation> selectvoc(int staffid);
	//根据id查询上班登记表
	public List<work_register> selectreg(int staffid);

}
