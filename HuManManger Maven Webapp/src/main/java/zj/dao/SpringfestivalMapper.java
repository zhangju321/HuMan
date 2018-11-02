package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Springfestival;

public interface SpringfestivalMapper {
	//查询
	public List<Map<String, Object>> sfFind();
    //添加
	public int sfSave(Springfestival sf);
	//删除
	public int sfDelete(Springfestival sf);
	//修改
	public int sfUpdate(Springfestival sf);
	//根据id查询
	public Springfestival sfFindById(int sfId);
	//部门外键
	public List<Map<String, Object>> departFind();
}