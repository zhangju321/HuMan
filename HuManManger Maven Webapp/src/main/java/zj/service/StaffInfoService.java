package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.Department;
import zj.entity.Staff_info;



public interface StaffInfoService {
	//��ѯ����Ա��
	public List<Map> queryStaff();
	//Ա������
    public List<Department> findAll();
    //����id��ѯ
    public List<Map> queryDepartId(int departmentId);
  //Ա��id��ѯ
    //public StaffInfo queryById2(int staff_Id);
    public Map queryById(Staff_info s);
    public List<Map<String,Object>> querymh(Staff_info s);

}
