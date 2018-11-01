package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Staff_info;
import zj.entity.Staff_reinstatement;

public interface Staff_reinstatementMapper {
	//添加
	public int insert(Staff_reinstatement Rein);
	//删除
	public int deleteRein(int reinstatementId);
	//查询复职表
	public List<Map<String,Object>> selectRein();
    //修改前查询
	public Staff_reinstatement selectReinid(int reinstatementId);
	//修改
	public int updateRein(Staff_reinstatement Rein);
    //查询离职员工
	public List<Staff_info> selectinfostu();
    //查询员工
	public List<Staff_info> selectstaffinfo();
	//查询部门
	public List<Department> selectdepartment();
	//查询职务
	public List<Position> selectposition();
    //修改在职状态	
	public int updateStatus(int staffId);
	//添加复职的时候把离职表的相同员工数据删除
	public int delectId(int staffId);
}