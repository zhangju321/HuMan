package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Staff_info;
import zj.entity.Staff_leave;

public interface Staff_leaveService {
	@Transactional
    //添加和修改   修改在职状态   添加离职的时候把复职表的数据删除
	public int insertorupdate(Staff_leave leave);
    //删除
	public int deleteleave(int leaveId);
    //通过map多表联合查询，不经过实体类
	public List<Map<String, Object>> selectleave();
    //修改前查询单条数据
	public Staff_leave selectleaveByID(int leaveId);
    //查询在职员工
	public List<Staff_info> selectinfostu();
    //查询员工
	public List<Staff_info> selectstaffinfo();
	//查询部门
	public List<Department> selectdepartment();
	//查询职务
	public List<Position> selectposition();

}
