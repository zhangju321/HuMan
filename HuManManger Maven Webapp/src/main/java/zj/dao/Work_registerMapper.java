package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Work_register;

public interface Work_registerMapper {
	public List<Map<String, Object>> queryAll();//��ѯ
	public int saveWork(Work_register register);//���
	public List<Map<String, Object>> selectId(int work_id);//����id��ѯ
	public int updateWork(Work_register register);//�޸�
	public int deletework(Work_register register);//ɾ��
	
	public List<Map<String, Object>> selectInfo();//����
	public List<Map<String, Object>> slectDent();//����
}
