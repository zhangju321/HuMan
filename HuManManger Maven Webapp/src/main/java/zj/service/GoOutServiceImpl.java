package zj.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.GoOutMapper;
import zj.entity.GoOut;
import zj.entity.Staff_info;




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
		// TODO Auto-generated method stub
		return gmapper.insert(g);
	}

	@Override
	public void updateStatu(GoOut statu) {
		// TODO Auto-generated method stub
		
		gmapper.updateStatu(statu);
	}

	@Override
	public void updateStatu2(GoOut statu) {
		// TODO Auto-generated method stub
		gmapper.updateStatu2(statu);
	}



	@Override
	public List<Staff_info> findAll() {
		// TODO Auto-generated method stub
		return gmapper.findAll();
	}



	

	@Override
	public GoOut queryById(int out_Id) {
		// TODO Auto-generated method stub
		return gmapper.queryById(out_Id);
	}



	@Override
	public List<Map> queryStaff3(int staff_Id) {
		// TODO Auto-generated method stub
		return gmapper.queryStaff3(staff_Id);
	}
	
}



