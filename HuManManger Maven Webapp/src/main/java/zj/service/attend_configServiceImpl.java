package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.attend_configMapper;
import zj.entity.attend_config;
@Service
public class attend_configServiceImpl implements attend_ConfigService {

	@Autowired
	private attend_configMapper attend;
	@Override
	public List<Map<String, Object>> conFind() {
		// TODO Auto-generated method stub
		return attend.conFind();
	}


	@Override
	public int conDelete(attend_config config) {
		// TODO Auto-generated method stub
		return attend.conDelete(config);
	}

	
	@Override
	public attend_config conFindById(int duty_Id) {
		// TODO Auto-generated method stub
		return attend.conFindById(duty_Id);
	}


	@Override
	public int saveOrUpdate(attend_config config) {
		// TODO Auto-generated method stub
		if (config.getDuty_id()!=null&&config.getDuty_id()>0) {
		return	attend.conUpdate(config);
		}
		return attend.conSave(config);
	}

}
