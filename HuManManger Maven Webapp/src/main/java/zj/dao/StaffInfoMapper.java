package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Department;
import zj.entity.Staff_info;



public interface StaffInfoMapper {
    public List<Map> queryStaff();
    public List<Department> findAll();
    public List<Map> queryDepartId(int departmentid);
    //public StaffInfo queryById(int staff_Id);
    public Map queryById(Staff_info s);
}