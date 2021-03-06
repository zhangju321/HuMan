package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.StaffInfoMapper;
import zj.entity.Department;
import zj.entity.Staff_info;
@Service
public class StaffInfoServiceImpl implements StaffInfoService {
@Autowired
 private StaffInfoMapper smapper;
	@Override
	public List<Map> queryStaff() {
		// TODO Auto-generated method stub
		return smapper.queryStaff();
	}

	@Override
	public List<Department> findAll() {
		// TODO Auto-generated method stub
		return smapper.findAll();
	}


	@Override
	public List<Map> queryDepartId(int departmentId) {
		// TODO Auto-generated method stub
		return smapper.queryDepartId(departmentId);
	}

	@Override
	public Map queryById(Staff_info s) {
		// TODO Auto-generated method stub
		return smapper.queryById(s);
	}

	@Override
	public List<Map<String, Object>> querymh(Staff_info s) {
		// TODO Auto-generated method stub
		return smapper.querymh(s);
	}

}
