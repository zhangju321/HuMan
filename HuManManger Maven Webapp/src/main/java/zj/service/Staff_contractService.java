package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import zj.entity.Staff_contract;
import zj.entity.Staff_info;

public interface Staff_contractService {
	@Transactional
	//��Ӻ��޸� �޸ĺ�ͬ״̬
	public int insertandupdate(Staff_contract contract);
	//ɾ��
	public int delete(int contractId);
	//��ѯ��ͬ��Ϣ
	public List<Map<String,Object>> selectcontract();
    //�޸�ǰ��ѯ
	public Staff_contract selectByID(int contractId);
    //��ѯԱ��
	public List<Staff_info> selectstaffinfo();
	//��ѯ��ͬ������Ϣ
	public List<Map<String,Object>> hetongdaoqi();
	//��ѯ���õ�����Ϣ
	public List<Map<String,Object>> shiyongdaoqi();
/*	//�޸ĺ�ͬ״̬  ʹ����
	public int updatestatus1(int contractId);
	//�޸ĺ�ͬ״̬  ���õ���
	public int updatestatus2(int contractId);
	//�޸ĺ�ͬ״̬  ��ͬ����
	public int updatestatus3(int contractId);*/

}
