package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.AttendanceStatistics;

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
	public List<Map<String, Object>> selectout(int staffid) {
		// TODO Auto-generated method stub
		return as.selectout(staffid);
	}

	@Override
	public List<Map<String, Object>> selecttra(int staffid) {
		// TODO Auto-generated method stub
		return as.selecttra(staffid);
	}

	@Override
	public List<Map<String, Object>> selectvoc(int staffid) {
		// TODO Auto-generated method stub
		return as.selectvoc(staffid);
	}

	@Override
	public List<Map<String, Object>> selectreg(int staffid) {
		// TODO Auto-generated method stub
		return as.selectreg(staffid);
	}



	

}
