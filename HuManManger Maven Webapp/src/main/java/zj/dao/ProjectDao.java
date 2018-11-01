package zj.dao;

import java.util.List;

import zj.entity.Project;


public interface ProjectDao {
	public List<Project> findAll(); //查询project表显示
    public void psave(Project p);//向project表添加数据
    public int pupdate(Project p);//修改project表
    public int pdelete(Project p);//删除
    public List<Project> selectid(int id);//单条查询
}
