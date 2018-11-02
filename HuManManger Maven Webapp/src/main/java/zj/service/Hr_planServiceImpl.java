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
	@Override
	public List<Map<String, Object>> departName() {
		// TODO Auto-generated method stub
		return dao.departName();
	}


}
