package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import zj.entity.department;
import zj.entity.position;
import zj.entity.staff_info;
import zj.entity.staff_reinstatement;

public interface staff_reinstatementService {
	@Transactional
	//删除
	public int deleteRein(int reinstatementId);
	//查询复职表
	public List<Map<String,Object>> selectRein();
    //修改前查询
	public staff_reinstatement selectReinid(int reinstatementId);
	//修改和添加   修改在职状态   添加离职的时候把复职表的数据删除
	public int insertorupdate(staff_reinstatement Rein);
    //查询离职员工
	public List<staff_info> selectinfostu();
    //查询员工
	public List<staff_info> selectstaffinfo();
	//查询部门
	public List<department> selectdepartment();
	//查询职务
	public List<position> selectposition();
}
