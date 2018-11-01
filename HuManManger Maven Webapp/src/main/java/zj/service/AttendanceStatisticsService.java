package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import zj.entity.Hr_go_out;
import zj.entity.Travel;
import zj.entity.Vocation;
import zj.entity.Work_register;

public interface AttendanceStatisticsService {
	@Transactional
	
	//����ͳ��
	public List<Map<String,Object>> selectas();

	//����id��ѯ�����
	public List<Hr_go_out> selectout(int staffid);
	//����id��ѯ�����
	public List<Travel> selecttra(int staffid);
	//����id��ѯ��ٱ�
	public List<Vocation> selectvoc(int staffid);
	//����id��ѯ�ϰ�ǼǱ�
	public List<Work_register> selectreg(int staffid);

}
