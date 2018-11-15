package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zj.dao.WelfareDao;

import zj.entity.Welfare;

@Service
public class WelfareServiceImpl implements WelfareService{
@Autowired
private WelfareDao dao;

//添加福利(不能重复给一个员工添加)
@Transactional
public int welfSave(Welfare welf) {
	int id=dao.querystaffid(welf.getStaff_id());
	if(id>0){
		return 0; 
	}else{
		int num=dao.welfSave(welf);
		return num;
	}
}



	@Override
	public List<Map<String, Object>> queryWelfare() {
		// TODO Auto-generated method stub
		return dao.queryWelfare();
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



	@Override
	public List<Map<String, Object>> queryTime(String issue_date) {
		// TODO Auto-generated method stub
		return dao.queryTime(issue_date);
	}



}
