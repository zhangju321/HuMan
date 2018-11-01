package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Staff_info;
import zj.entity.Staff_reinstatement;

public interface Staff_reinstatementService {
	@Transactional
	//删除
	public int deleteRein(int reinstatementId);
	//查询复职表
	public List<Map<String,Object>> selectRein();
    //修改前查询
	public Staff_reinstatement selectReinid(int reinstatementId);
	//修改和添加   修改在职状态   添加离职的时候把复职表的数据删除
	public int insertorupdate(Staff_reinstatement Rein);
    //查询离职员工
	public List<Staff_info> selectinfostu();
    //查询员工
	public List<Staff_info> selectstaffinfo();
	//查询部门
	public List<Department> selectdepartment();
	//查询职务
	public List<Position> selectposition();
}
