package zj.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface PayStateDao {
	
	//����ʱ���ѯ����
public List<Map<String,Object>> queryTime(String tax_time);
	//��ѯн�ʺ�������
 public List<Map<String,Object>> queryPay();
 //�����޸�н�ʼƻ�״̬(����)
 public int updateState(@Param("id")int id);
 //�����޸�н�ʼƻ�״̬(����)
 public int updateState2(@Param("id")int id);
}
