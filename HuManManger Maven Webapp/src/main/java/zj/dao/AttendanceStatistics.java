package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Hr_go_out;
import zj.entity.Travel;
import zj.entity.Vocation;
import zj.entity.Work_register;

public interface AttendanceStatistics {
	
	//考勤统计
	public List<Map<String,Object>> selectas();
	//根据id查询外出表
	public List<Hr_go_out> selectout(int staffid);
	//根据id查询出差表
	public List<Travel> selecttra(int staffid);
	//根据id查询请假表
	public List<Vocation> selectvoc(int staffid);
	//根据id查询上班登记表
	public List<Work_register> selectreg(int staffid);

}
