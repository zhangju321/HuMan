package zj.dao;

import java.util.List;
import java.util.Map;



public interface AttendanceStatistics {
	
	//����ͳ��
	public List<Map<String,Object>> selectas();
	//����id��ѯ�����
	public List<Map<String,Object>> selectout(int staffid);
	//����id��ѯ�����
	public List<Map<String,Object>> selecttra(int staffid);
	//����id��ѯ��ٱ�
	public List<Map<String,Object>> selectvoc(int staffid);
	//����id��ѯ�ϰ�ǼǱ�
	public List<Map<String,Object>> selectreg(int staffid);

}
