package zj.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.GoOutMapper;
import zj.entity.GoOut;
import zj.entity.Staff_info;
import zj.entity.Vocation;




@Service
public class GoOutServiceImpl implements GoOutService {
@Autowired
  private GoOutMapper gmapper;

@Override
	public List<Map> queryAll() {
		// TODO Auto-generated method stub
		return gmapper.queryAll();
	}

	

	@Override
	public int insert(GoOut g) {
		return gmapper.insert(g);
	}

	@Override
	public void updateStatu(GoOut statu) {		
		gmapper.updateStatu(statu);
	}

	@Override
	public void updateStatu2(GoOut statu) {
		gmapper.updateStatu2(statu);
	}

	@Override
	public List<Map> findAll() {
		return gmapper.findAll();
	}	
	@Override
	public List<Map> queryStaff3(int sta_Staff_Id) {
		return gmapper.queryStaff3(sta_Staff_Id);
	}



	@Override
	public GoOut queryId(int out_Id) {
		return gmapper.queryId(out_Id);
	}



	@Override
	public List<Map<String, Object>> queryDetails(int out_Id) {
		// TODO Auto-generated method stub
		return gmapper.queryDetails(out_Id);
	}



	@Override
	public List<Map> notApproved() {
		// TODO Auto-generated method stub
		return gmapper.notApproved();
	}



	
	
}



