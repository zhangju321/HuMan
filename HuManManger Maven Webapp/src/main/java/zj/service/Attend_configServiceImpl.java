package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.Attend_configMapper;
import zj.entity.Attend_config;
@Service
public class Attend_configServiceImpl implements Attend_ConfigService {

	@Autowired
	private Attend_configMapper attend;
	@Override
	public List<Map<String, Object>> conFind() {
		// TODO Auto-generated method stub
		return attend.conFind();
	}


	@Override
	public int conDelete(Attend_config config) {
		// TODO Auto-generated method stub
		return attend.conDelete(config);
	}

	
	@Override
	public Attend_config conFindById(int duty_Id) {
		// TODO Auto-generated method stub
		return attend.conFindById(duty_Id);
	}


	@Override
	public int saveOrUpdate(Attend_config config) {
		// TODO Auto-generated method stub
		if (config.getDuty_id()!=null&&config.getDuty_id()>0) {
		return	attend.conUpdate(config);
		}
		return attend.conSave(config);
	}

}
