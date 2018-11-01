package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Staff_contract;
import zj.entity.Staff_info;

public interface Staff_contractMapper {
	//��Ӻ�ͬ
	public int insert(Staff_contract contract);
	//ɾ��
	public int delete(int contractId);
	//��ѯ��ͬ��Ϣ
	public List<Map<String,Object>> selectcontract();
    //�޸�ǰ��ѯ
	public Staff_contract selectByID(int contractId);
	//�޸�
	public int update(Staff_contract contract);
    //��ѯԱ��
	public List<Staff_info> selectstaffinfo();

}