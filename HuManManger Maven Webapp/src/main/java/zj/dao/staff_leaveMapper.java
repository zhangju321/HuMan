package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.department;
import zj.entity.position;
import zj.entity.staff_info;
import zj.entity.staff_leave;

public interface staff_leaveMapper {
	
	public int insert(staff_leave leave);
	
	public int deleteleave(int leaveId);
	
	public List<Map<String,Object>> selectleave();

	public staff_leave selectleaveByID(int leaveId);
	
	public int updateleave(staff_leave leave);

    //查询在职员工
	public List<staff_info> selectinfostu();
    //查询员工
	public List<staff_info> selectstaffinfo();
	//查询部门
	public List<department> selectdepartment();
	//查询职务
	public List<position> selectposition();
	//修改在职状态
	public int updateStatus(int staffId);
	//添加离职的时候把复职表相同员工的数据删除
	public int delectId(int staffId);
	
}