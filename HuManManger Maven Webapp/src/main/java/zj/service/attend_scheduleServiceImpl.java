package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.attend_scheduleMapper;
import zj.entity.attend_schedule;
@Service
public class attend_scheduleServiceImpl implements attend_scheduleService {

	@Autowired
	private attend_scheduleMapper as;
	@Override
	public List<Map<String, Object>> scheFind() {
		// TODO Auto-generated method stub
		return as.scheFind();
	}

	@Override
	public int scheDelete(attend_schedule schedule) {
		// TODO Auto-generated method stub
		return as.scheDelete(schedule);
	}

	@Override
	public int saveOrUpdate(attend_schedule schedule) {
		// TODO Auto-generated method stub
		if (schedule.getId()!=null&&schedule.getId()>0) {
			return as.scheUpdate(schedule);
		}
		return as.scheSave(schedule);
	}

	@Override
	public attend_schedule scheFindById(int id) {
		// TODO Auto-generated method stub
		return as.scheFindById(id);
	}

	@Override
	public void updateState(attend_schedule schedule) {
		
	
			as.updateState(schedule);
		
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
