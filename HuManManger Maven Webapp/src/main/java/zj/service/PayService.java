package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.hr_check;
import zj.entity.Pay;


public interface PayService {
	public int paySave(Pay pay);//���н�ʻ�������
	/*public int querystaffid(int id);*///������ѯ��Ա �ж�id�Ƿ��ظ�
	public List<Map<String,Object>> queryAll();//��ѯн��

	public List<Map<String,Object>> queryPeo();//��ѯȫ������ְ����Ա����
	public List<Map<String,Object>> queryCheck();///��ѯн�ʱ�׼�Ϳ��ڴ���
	public List<Map<String,Object>> queryId(int id);//������ѯ����ְ����Ա
	public int checkUpdate(hr_check check);//�޸Ŀ��ڿۿ��׼
	public List<hr_check> queryCheckid(int id);//������ѯcheck
	public List<Map<String,Object>> queryAll2();//���ϲ�ѯ����ͳ�ƺͿ��ڿۿ��׼
	public List<Map<String, Object>> queryAll3();//����
	public List<Map<String,Object>> queryPay();//��ѯн�ʸ����ܶ�
	public int payUpdate(Pay pay);//�޸�н��
	public void payDelete(Pay pay);//ɾ��н��
	public List<Map<String,Object>> queryPayId(int id);//��ѯн�ʱ�����
	public List<Map<String,Object>> selectid(int id);//������ѯн�ʱ�
}
