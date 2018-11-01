package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.AttendanceStatistics;
import zj.entity.Hr_go_out;
import zj.entity.Travel;
import zj.entity.Vocation;
import zj.entity.Work_register;
@Service
public class AttendanceStatisticsServiceimpl implements AttendanceStatisticsService{
	@Autowired
	private AttendanceStatistics as;

	@Override
	//¿¼ÇÚÍ³¼Æ
	public List<Map<String, Object>> selectas() {
		// TODO Auto-generated method stub
		return as.selectas();
	}

	@Override
	public List<Hr_go_out> selectout(int staffid) {
		// TODO Auto-generated method stub
		return as.selectout(staffid);
	}

	@Override
	public List<Travel> selecttra(int staffid) {
		// TODO Auto-generated method stub
		return as.selecttra(staffid);
	}

	@Override
	public List<Vocation> selectvoc(int staffid) {
		// TODO Auto-generated method stub
		return as.selectvoc(staffid);
	}

	@Override
	public List<Work_register> selectreg(int staffid) {
		// TODO Auto-generated method stub
		return as.selectreg(staffid);
	}

	

}
