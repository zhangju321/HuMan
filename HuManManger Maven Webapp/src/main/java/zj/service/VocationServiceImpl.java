package zj.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.VocationMapper;
import zj.entity.Staff_info;
import zj.entity.Vocation;

@Service
public class VocationServiceImpl implements VocationService {
   @Autowired
   private VocationMapper vdao;
	
	public int save(Vocation v) {
		// TODO Auto-generated method stub
		return vdao.save(v);
	}

	@Override
	public List<Map> findAll() {
		// TODO Auto-generated method stub
		return vdao.findAll();
	}

	@Override
	public List<Map> queryAll() {
		// TODO Auto-generated method stub
		return vdao.queryAll();
	}


	@Override
	public void updateStatu(Vocation statu) {
		
			vdao.updateStatu(statu);		
		    }

	@Override
	public void updateStatu2(Vocation statu) {
		// TODO Auto-generated method stub
	    vdao.updateStatu2(statu);

	}

	@Override
	public List<Map> queryStaff(int sta_Staff_Id) {
		// TODO Auto-generated method stub
		return vdao.queryStaff(sta_Staff_Id);
	}

	@Override
	public int delete(int vocation_Id) {
		// TODO Auto-generated method stub
		return vdao.delete(vocation_Id);
	}

	@Override
	public Vocation queryId(int vocation_Id) {
		// TODO Auto-generated method stub
		return vdao.queryId(vocation_Id);
	}

	@Override
	public List<Map<String, Object>> queryById(int vocation_Id) {
		// TODO Auto-generated method stub
		return vdao.queryById(vocation_Id);
	}

	@Override
	public List<Map<String, Object>> UserName() {
		// TODO Auto-generated method stub
		return vdao.UserName();
	}

	@Override
	public List<Map> notApproved() {
		// TODO Auto-generated method stub
		return vdao.notApproved();
	}

	

}
