package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.TravelMapper;
import zj.entity.GoOut;
import zj.entity.Staff_info;
import zj.entity.Travel;


@Service
public class TravelServiceImpl implements TravelService {
@Autowired
  private TravelMapper tdao;
	@Override
	public List<Map> queryAll() {
		// TODO Auto-generated method stub
		return tdao.queryAll();
	}

	@Override
	public List<Staff_info> findAll() {
		// TODO Auto-generated method stub
		return tdao.findAll();
	}

	@Override
	public int save(Travel t) {
		// TODO Auto-generated method stub
		return tdao.save(t);
	}

	@Override
	public void updateStatu(Travel statu) {
		// TODO Auto-generated method stub
		
			tdao.updateStatu(statu);
		    
	}

	@Override
	public void updateStatu2(Travel statu) {
		// TODO Auto-generated method stub
		tdao.updateStatu2(statu);

	}

	/*@Override
	public Travel queryById(int travel_Id) {
		// TODO Auto-generated method stub
		return tdao.queryById(travel_Id);
	}*/

	@Override
	public List<Map> queryStaff2(int sta_Staff_Id) {
		// TODO Auto-generated method stub
		return tdao.queryStaff2(sta_Staff_Id);
	}

	@Override
	public Travel overrule(int travel_Id) {
		// TODO Auto-generated method stub
		return tdao.overrule(travel_Id);
	}

	@Override
	public List<Map<String, Object>> queryDetails(int travel_Id) {
		// TODO Auto-generated method stub
		return tdao.queryDetails(travel_Id);
	}

}
