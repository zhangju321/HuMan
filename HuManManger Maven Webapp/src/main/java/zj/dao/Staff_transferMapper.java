package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Staff_transfer;

public interface Staff_transferMapper {
	public List<Map<String, Object>> queryAll();//��ѯȫ��
	public List<Map<String, Object>> queryId(int TRANSFER_ID);//����id��ѯ
	public int update(Staff_transfer transfer);//�޸�
	public int delete(Staff_transfer transfer);//ɾ��
	public int savetransfer(Staff_transfer transfer);//���
	public List<Map<String, Object>> queryDe();//���Ų�ѯ
	public List<Map<String, Object>> querySta();//���²�ѯ
}
