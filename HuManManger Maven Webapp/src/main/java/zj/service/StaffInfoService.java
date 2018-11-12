package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.Department;
import zj.entity.Staff_info;



public interface StaffInfoService {
	//查询所有员工
	public List<Map> queryStaff();
	//员工部门
    public List<Department> findAll();
    //部门id查询
    public List<Map> queryDepartId(int departmentId);
  //员工id查询
    //public StaffInfo queryById2(int staff_Id);
    public Map queryById(Staff_info s);
    public List<Map<String,Object>> querymh(Staff_info s);

}
