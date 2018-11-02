package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.Staff_infoMapper;
import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Role;
import zj.entity.Staff_info;
@Service
public class Staff_infoServiceImpl implements Staff_infoService{
@Autowired
private Staff_infoMapper mper;
	@Override
	public List<Map<String, Object>> selectAll() {
		// TODO Auto-generated method stub
		return mper.selectAll();
	}

	@Override
	public void save(Staff_info stinfo) {
		// TODO Auto-generated method stub
		mper.save(stinfo);
		
	}

	@Override
	public	List<Staff_info> selectId(int staff_id){
 
		// TODO Auto-generated method stub
		return mper.selectId(staff_id);
	}

	@Override
	public int update(Staff_info stinfo) {
		// TODO Auto-generated method stub
		return mper.update(stinfo);
	}

	@Override
	public int delete(int staff_id) {
		// TODO Auto-generated method stub
		return mper.delete(staff_id);
	}

	@Override
	public List<Role> selectRole() {
		// TODO Auto-generated method stub
		return mper.selectRole();
	}

	@Override
	public List<Position> selectPost() {
		// TODO Auto-generated method stub
		return mper.selectPost();
	}

	@Override
	public List<Department> selectDep() {
		// TODO Auto-generated method stub
		return mper.selectDep();
	}

}
