package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.springfestival;

public interface springfestivalMapper {
	//查询
	public List<Map<String, Object>> sfFind();
    //添加
	public int sfSave(springfestival sf);
	//删除
	public int sfDelete(springfestival sf);
	//修改
	public int sfUpdate(springfestival sf);
	//根据id查询
	public springfestival sfFindById(int sfId);
	//部门外键
	public List<Map<String, Object>> departFind();
}