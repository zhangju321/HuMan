package zj.service;

import java.util.List;

import zj.entity.Project;

public interface ProjectService {
	public void psave(Project p);//向project表添加数据
	  public List<Project> findAll();//查询project表显示
	  public int pupdate(Project p);//修改project表
	  public int pdelete(Project p);//删除
	  public List<Project> selectid(int id);//单条查询
}
