package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.PayStateDao;
@Service
public class PayStateServiceImpl implements PayStateService{
	@Autowired
	private PayStateDao dao;
	//��ѯȫ��
	@Override
	public List<Map<String, Object>> queryPay() {
		// TODO Auto-generated method stub
		return dao.queryPay();
	}
	//�����޸�н��״̬
	@Override
	public int updateState(String[] check_val) {
		int[] intArr=new int[0];//����һ��int����
		intArr=new int[check_val.length];//��String����ĳ��ȸ���int����
		for (int i = 0; i < check_val.length; i++) {
			intArr[i]=Integer.parseInt(check_val[i]);//ѭ����String����ת��int����
		}
		if (check_val!=null&&intArr!=null) {
			for (int i = 0; i < intArr.length; i++) {//�Ѿ����ɵ��Ǹ�int���飬�������ĳ���ѭ�����������������
				int a=intArr[i];
				dao.updateState(a);
			}
			return 1;
		}
		return 0;//������ȷ�Ľ��������1
	}
	@Override
	public int updateState2(String[] check_val) {
		int[] intArr=new int[0];//����һ��int����
		intArr=new int[check_val.length];//��String����ĳ��ȸ���int����
		for (int i = 0; i < check_val.length; i++) {
			intArr[i]=Integer.parseInt(check_val[i]);//ѭ����String����ת��int����
		}
		if (check_val!=null&&intArr!=null) {
			for (int i = 0; i < intArr.length; i++) {//�Ѿ����ɵ��Ǹ�int���飬�������ĳ���ѭ�����������������
				int a=intArr[i];
				dao.updateState2(a);
			}
			return 1;
		}
		return 0;//������ȷ�Ľ��������1
	}
	//����ʱ��ģ����ѯн��
	@Override
	public List<Map<String, Object>> queryTime(String tax_time) {
		// TODO Auto-generated method stub
		return dao.queryTime(tax_time);
	}
}
