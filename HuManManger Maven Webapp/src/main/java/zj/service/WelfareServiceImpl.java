package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zj.dao.WelfareDao;
import zj.entity.department;
import zj.entity.Welfare;

@Service
public class WelfareServiceImpl implements WelfareService{
@Autowired
private WelfareDao dao;
	@Override
	public List<Map<String, Object>> queryWelfare() {
		// TODO Auto-generated method stub
		return dao.queryWelfare();
	}
	@Transactional
	public void welfSave(Welfare welf) {
		// TODO Auto-generated method stub
		dao.welfSave(welf);
	}
	@Override
	public List<Map<String, Object>> queryDepar() {
		// TODO Auto-generated method stub
		return dao.queryDepar();
	}
	@Transactional
	public void welfDlete(Welfare welf) {
		// TODO Auto-generated method stub
		dao.welfDlete(welf);
	}
	@Transactional
	public void welfUpdate(Welfare welf) {
		// TODO Auto-generated method stub
		dao.welfUpdate(welf);
	}
	@Override
	public List<Map<String, Object>> queryWelfare2(int id) {
		// TODO Auto-generated method stub
		return dao.queryWelfare2(id);
	}

}
