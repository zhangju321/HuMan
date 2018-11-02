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

	/*@Override
	public StaffInfo queryById(int staff_Id) {
		// TODO Auto-generated method stub
		return smapper.queryById(staff_Id);
	}*/

	@Override
	public List<Map> queryDepartId(int departmentid) {
		// TODO Auto-generated method stub
		return smapper.queryDepartId(departmentid);
	}

	@Override
	public Map queryById(Staff_info s) {
		// TODO Auto-generated method stub
		return smapper.queryById(s);
	}

}
