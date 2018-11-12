package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.Attend_scheduleMapper;
import zj.entity.Attend_schedule;
@Service
public class Attend_scheduleServiceImpl implements Attend_scheduleService {

	@Autowired
	private Attend_scheduleMapper as;
	@Override
	public List<Map<String, Object>> scheFind() {
		// TODO Auto-generated method stub
		return as.scheFind();
	}

	@Override
	public int scheDelete(Attend_schedule schedule) {
		// TODO Auto-generated method stub
		return as.scheDelete(schedule);
	}

	@Override
	public int saveOrUpdate(Attend_schedule schedule) {
		// TODO Auto-generated method stub
		if (schedule.getId()!=null&&schedule.getId()>0) {
			return as.scheUpdate(schedule);
		}
		return as.scheSave(schedule);
	}

	@Override
	public Attend_schedule scheFindById(int id) {
		// TODO Auto-generated method stub
		return as.scheFindById(id);
	}

	@Override
	public int updateState(Attend_schedule schedule) {
	
			return as.updateState(schedule);
		
	}

	@Override
	public List<Map<String, Object>> roleFind() {
		// TODO Auto-generated method stub
		return as.roleFind();
	}

	@Override
	public List<Map<String, Object>> departFind() {
		// TODO Auto-generated method stub
		return as.departFind();
	}

	@Override
	public List<Map<String, Object>> staffFind() {
		// TODO Auto-generated method stub
		return as.staffFind();
	}

}
