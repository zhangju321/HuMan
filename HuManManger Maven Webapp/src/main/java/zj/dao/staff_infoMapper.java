package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.department;
import zj.entity.position;
import zj.entity.role;
import zj.entity.staff_info;

public interface staff_infoMapper {
	public	List<Map<String,Object>> selectAll();
	public void save(staff_info stinfo);
	public	List<staff_info> selectId(int staff_id);
	public int update(staff_info stinfo);
	public int delete(int staff_id);
	
	public List<role> selectRole();
	public List<position> selectPost();
	public List<department> selectDep();
}
