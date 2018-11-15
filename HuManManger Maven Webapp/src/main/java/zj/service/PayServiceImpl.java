package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zj.dao.PayDao;
import zj.entity.hr_check;
import zj.entity.Pay;



@Service
public class PayServiceImpl implements PayService{
@Autowired
private PayDao dao;

	//判断薪资是否重复添加
@Transactional
public int paySave(Pay pay) {
	// TODO Auto-generated method stub
	int id=dao.querystaffid(pay.getStaff_id());
	if(id>0){
		return 0; 
	}else{
		int num=dao.paySave(pay);
		return num;
	}
}
	
	@Override
	public List<Map<String, Object>> queryAll() {
		// TODO Auto-generated method stub
		return dao.queryAll();
	}
	@Transactional
	public int checkUpdate(hr_check check) {
		// TODO Auto-generated method stub
		return dao.checkUpdate(check);
	}
	@Override
	public List<Map<String, Object>> queryAll2() {
		// TODO Auto-generated method stub
		return dao.queryAll2();
	}
	@Override
	public List<Map<String, Object>> queryPeo() {
		// TODO Auto-generated method stub
		return dao.queryPeo();
	}
	@Override
	public List<Map<String, Object>> queryId(int id) {
		// TODO Auto-generated method stub
		return dao.queryId(id);
	}
	@Override
	public List<Map<String, Object>> queryAll3() {
		// TODO Auto-generated method stub
		return dao.queryAll3();
	}
	@Override
	public List<Map<String, Object>> queryCheck() {
		// TODO Auto-generated method stub
		return dao.queryCheck();
	}




	@Override
	public List<hr_check> queryCheckid(int id) {
		// TODO Auto-generated method stub
		return dao.queryCheckid(id);
	}

	@Override
	public List<Map<String, Object>> queryPay() {
		// TODO Auto-generated method stub
		return dao.queryPay();
	}

	@Transactional
	public int payUpdate(Pay pay) {
		// TODO Auto-generated method stub
		return dao.payUpdate(pay);
	}

	@Transactional
	public void payDelete(Pay pay) {
		// TODO Auto-generated method stub
		dao.payDelete(pay);
	}

	@Override
	public List<Map<String, Object>> queryPayId(int id) {
		// TODO Auto-generated method stub
		return dao.queryPayId(id);
	}

	@Override
	public List<Map<String, Object>> selectid(int id) {
		// TODO Auto-generated method stub
		return dao.selectid(id);
	}
//根据时间模糊查询薪资
	@Override
	public List<Map<String, Object>> queryTime(String tax_time) {
		// TODO Auto-generated method stub
		return dao.queryTime(tax_time);
	}

	

	
	

	
	
	


}
