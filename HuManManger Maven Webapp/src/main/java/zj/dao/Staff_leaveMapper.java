package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Staff_info;
import zj.entity.Staff_leave;

public interface Staff_leaveMapper {
	
	public int insert(Staff_leave leave);
	
	public int deleteleave(int leaveId);
	
	public List<Map<String,Object>> selectleave();

	public Staff_leave selectleaveByID(int leaveId);
	
	public int updateleave(Staff_leave leave);

    //查询在职员工
	public List<Staff_info> selectinfostu();
    //查询员工
	public List<Staff_info> selectstaffinfo();
	//查询部门
	public List<Department> selectdepartment();
	//查询职务
	public List<Position> selectposition();
	//修改在职状态
	public int updateStatus(int staffId);
	//添加离职的时候把复职表相同员工的数据删除
	public int delectId(int staffId);
	
}