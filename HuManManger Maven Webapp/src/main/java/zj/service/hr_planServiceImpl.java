package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.hr_planMapper;
import zj.entity.hr_recruit_plan;
import zj.service.hr_planService;
@Service
public class hr_planServiceImpl implements hr_planService {
@Autowired
private hr_planMapper dao;
	@Override
	public List<Map<String,Object>> Select() {
		return dao.QueryAll();
	}
	@Override
	public int Save(hr_recruit_plan plan) {
		return dao.Save(plan);
	}
	@Override
	public List<Map<String,Object>> QueryId(int planNo) {
		return dao.QueryId(planNo);
	}
	@Override
	public int Update(hr_recruit_plan plan) {
		return dao.Update(plan);
	}
	/*²éÑ¯×´Ì¬*/
	@Override
	public List<Map<String, Object>> Queryzero(int planStatus) {
		return dao.Querystatus(planStatus);
	}
	@Override
	public int oneupdae(int planNo) {
	return dao.oneupdate(planNo);	
	}
	public int twoupdae(int planNo) {
	     return dao.twoupdate(planNo);		
		}
	@Override
	public int Delete(int planNo) {
		return dao.Delete(planNo);
	}


}
