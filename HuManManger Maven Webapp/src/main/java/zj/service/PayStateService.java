package zj.service;

import java.util.List;
import java.util.Map;

public interface PayStateService {

	//����ʱ���ѯ����
	public List<Map<String,Object>> queryTime(String tax_time);
	//��ѯн�ʺ�������
	public List<Map<String,Object>> queryPay();
	//�����޸�(����)
	public int updateState(String[] check_val);
	//�����޸�(����)
	public int updateState2(String[] check_val);
}
