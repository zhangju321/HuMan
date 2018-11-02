package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Role;
import zj.entity.Staff_info;

public interface Staff_infoService {
	public	List<Map<String,Object>> selectAll();
	public void save(Staff_info stinfo);
	public	List<Staff_info> selectId(int staff_id);
	public int update(Staff_info stinfo);
	public int delete(int staff_id);
	
	public List<Role> selectRole();
	public List<Position> selectPost();
	public List<Department> selectDep();
}
