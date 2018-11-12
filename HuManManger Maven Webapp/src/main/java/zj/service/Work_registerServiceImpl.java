package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.Work_registerMapper;
import zj.entity.Work_register;
@Service
public class Work_registerServiceImpl implements Work_registerService{
	@Autowired
	private Work_registerMapper maper;
	@Override
	public List<Map<String, Object>> queryAll() {
		// TODO Auto-generated method stub
		return maper.queryAll();
	}

	@Override
	public int saveWork(Work_register register) {
		// TODO Auto-generated method stub
		return maper.saveWork(register);
	}

	@Override
	public List<Map<String, Object>> selectId(int work_id) {
		// TODO Auto-generated method stub
		return maper.selectId(work_id);
	}

	@Override
	public int updateWork(Work_register register) {
		// TODO Auto-generated method stub
		return maper.updateWork(register);
	}

	@Override
	public int deletework(Work_register register) {
		// TODO Auto-generated method stub
		return maper.deletework(register);
	}

	@Override
	public List<Map<String, Object>> selectInfo() {
		// TODO Auto-generated method stub
		return maper.selectInfo();
	}

	@Override
	public List<Map<String, Object>> slectDent() {
		// TODO Auto-generated method stub
		return maper.slectDent();
	}

}
