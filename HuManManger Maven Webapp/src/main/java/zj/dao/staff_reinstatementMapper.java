package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.department;
import zj.entity.position;
import zj.entity.staff_info;
import zj.entity.staff_reinstatement;

public interface staff_reinstatementMapper {
	//添加
	public int insert(staff_reinstatement Rein);
	//删除
	public int deleteRein(int reinstatementId);
	//查询复职表
	public List<Map<String,Object>> selectRein();
    //修改前查询
	public staff_reinstatement selectReinid(int reinstatementId);
	//修改
	public int updateRein(staff_reinstatement Rein);
    //查询离职员工
	public List<staff_info> selectinfostu();
    //查询员工
	public List<staff_info> selectstaffinfo();
	//查询部门
	public List<department> selectdepartment();
	//查询职务
	public List<position> selectposition();
    //修改在职状态	
	public int updateStatus(int staffId);
	//添加复职的时候把离职表的相同员工数据删除
	public int delectId(int staffId);
}