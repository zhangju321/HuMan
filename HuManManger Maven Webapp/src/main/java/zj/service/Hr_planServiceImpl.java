package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.Hr_planMapper;
import zj.entity.Hr_recruit_plan;
import zj.service.Hr_planService;
@Service
public class Hr_planServiceImpl implements Hr_planService {
@Autowired
private Hr_planMapper dao;
	@Override
	public List<Map<String,Object>> Select() {
		return dao.QueryAll();
	}
	@Override
	public int Save(Hr_recruit_plan plan) {
		return dao.Save(plan);
	}
	@Override
	public List<Map<String,Object>> QueryId(int planNo) {
		return dao.QueryId(planNo);
	}
	@Override
	public int Update(Hr_recruit_plan plan) {
		return dao.Update(plan);
	}
	/*²éÑ¯×´Ì¬*/
	@Override
	public List<Map<String, Object>> Queryzero(Hr_recruit_plan plan) {
		return dao.Querystatus(plan);
	}
	@Override
	public int statusUpdae(Hr_recruit_plan plan) {
	     return dao.statusUpdate(plan);	
	}
	@Override
	public int Delete(int planNo) {
		return dao.Delete(planNo);
	}

}
