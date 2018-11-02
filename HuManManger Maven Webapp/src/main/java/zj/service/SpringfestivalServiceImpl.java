package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.SpringfestivalMapper;
import zj.entity.Springfestival;
@Service
public class SpringfestivalServiceImpl implements SpringfestivalService {

	@Autowired
	private SpringfestivalMapper sfm;
	@Override
	public List<Map<String, Object>> sfFind() {
		// TODO Auto-generated method stub
		return sfm.sfFind();
	}

	@Override
	public int saveOrUpdate(Springfestival sf) {
		// TODO Auto-generated method stub
		if (sf.getSfId()!=null&&sf.getSfId()>0) {
			return sfm.sfUpdate(sf);
		}
		return sfm.sfSave(sf);
	}

	@Override
	public int sfDelete(Springfestival sf) {
		// TODO Auto-generated method stub
		return sfm.sfDelete(sf);
	}

	@Override
	public Springfestival sfFindById(int SfId) {
		// TODO Auto-generated method stub
		return sfm.sfFindById(SfId);
	}

	@Override
	public List<Map<String, Object>> departFind() {
		// TODO Auto-generated method stub
		return sfm.departFind();
	}

}
