package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.Staff_transferMapper;
import zj.entity.Staff_transfer;
@Service
public class Staff_transferServiceImpl implements Staff_transferService{
	@Autowired
	private Staff_transferMapper mapp;
	@Override
	public List<Map<String, Object>> queryAll() {
		// TODO Auto-generated method stub
		
		return mapp.queryAll();
	}

	@Override
	public List<Map<String, Object>> queryId(int TRANSFER_ID) {
		// TODO Auto-generated method stub
		return mapp.queryId(TRANSFER_ID);
	}

	@Override
	public int update(Staff_transfer transfer) {
		// TODO Auto-generated method stub
		return mapp.update(transfer);
	}

	@Override
	public int delete(Staff_transfer transfer) {
		// TODO Auto-generated method stub
		return mapp.delete(transfer);
	}

	@Override
	public int savetransfer(Staff_transfer transfer) {
		// TODO Auto-generated method stub
		return mapp.savetransfer(transfer);
	}

	@Override
	public List<Map<String, Object>> queryDe() {
		// TODO Auto-generated method stub
		return mapp.queryDe();
	}

	@Override
	public List<Map<String, Object>> querySta() {
		// TODO Auto-generated method stub
		return mapp.querySta();
	}

}
