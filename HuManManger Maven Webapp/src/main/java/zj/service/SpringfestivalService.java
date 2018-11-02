package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.Springfestival;

public interface SpringfestivalService {
	//查询
		public List<Map<String, Object>> sfFind();
	    //添加
		public int saveOrUpdate(Springfestival sf);
		//删除
		public int sfDelete(Springfestival sf);
		//根据id查询
		public Springfestival sfFindById(int SfId);
		//部门外键
		public List<Map<String, Object>> departFind();
}
