package zj.dao;

import java.util.List;
import java.util.Map;


import zj.entity.Welfare;

public interface WelfareDao {
 public List<Map<String,Object>> queryWelfare();//��ѯ�������ñ�
 public int welfSave(Welfare welf);//��� 
 public List<Map<String,Object>> queryDepar();//��ѯ���� ����
 public void welfDlete(Welfare welf);//ɾ��
 public void welfUpdate(Welfare welf);//�޸�
 public List<Map<String,Object>> queryWelfare2(int id);//�����޸Ĳ�ѯ
 public List<Map<String,Object>> queryLike();//ģ����ѯԱ��������Ϣ
 public int querystaffid(int id);//������ѯ��Ա �ж�id�Ƿ��ظ�
 public List<Map<String,Object>> queryTime(String issue_date);//����ʱ���ѯ����

}
