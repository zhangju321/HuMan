package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Role;
import zj.entity.Staff_info;

public interface Staff_infoMapper {
	public	List<Map<String,Object>> selectAll();//查询全部
	public int save(Staff_info stinfo);//添加
	public	List<Map<String,Object>> selectId(int staff_id);//根据id查询
	public int update(Staff_info stinfo);//修改
	public int delete(Staff_info stinfo);//删除
	
	public List<Map<String,Object>> selectRole();//查询角色
	public List<Map<String,Object>> selectPost();//查询职务
	public List<Map<String,Object>> selectDep();//查询部门
}
