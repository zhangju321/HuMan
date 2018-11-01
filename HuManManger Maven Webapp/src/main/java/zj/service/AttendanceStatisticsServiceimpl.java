package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.AttendanceStatistics;
import zj.entity.hr_go_out;
import zj.entity.travel;
import zj.entity.vocation;
import zj.entity.work_register;
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
	public List<hr_go_out> selectout(int staffid) {
		// TODO Auto-generated method stub
		return as.selectout(staffid);
	}

	@Override
	public List<travel> selecttra(int staffid) {
		// TODO Auto-generated method stub
		return as.selecttra(staffid);
	}

	@Override
	public List<vocation> selectvoc(int staffid) {
		// TODO Auto-generated method stub
		return as.selectvoc(staffid);
	}

	@Override
	public List<work_register> selectreg(int staffid) {
		// TODO Auto-generated method stub
		return as.selectreg(staffid);
	}

	

}
