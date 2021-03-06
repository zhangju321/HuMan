package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.Attend_ruleMapper;
import zj.entity.Attend_rule;
@Service
public class Attend_ruleServiceImpl implements Attend_ruleService {

	@Autowired
	private Attend_ruleMapper ruleM;
	@Override
	public List<Map<String, Object>> ruleFind() {
		// TODO Auto-generated method stub
		return ruleM.ruleFind();
	}

	@Override
	public int saveOrUpdate(Attend_rule rule) {
		// TODO Auto-generated method stub
		if (rule.getKid()!=null&&rule.getKid()>0) {
			return ruleM.ruleUpdate(rule);
		}
		return ruleM.ruleSave(rule);
	}

	@Override
	public int ruleDelete(Attend_rule rule) {
		// TODO Auto-generated method stub
		return ruleM.ruleDelete(rule);
	}

	

	@Override
	public Attend_rule ruleFindById(int kid) {
		// TODO Auto-generated method stub
		return ruleM.ruleFindById(kid);
	}

}
