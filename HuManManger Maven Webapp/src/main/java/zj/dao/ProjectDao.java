package zj.dao;

import java.util.List;

import zj.entity.Project;


public interface ProjectDao {
	public List<Project> findAll(); //��ѯproject����ʾ
    public void psave(Project p);//��project���������
    public int pupdate(Project p);//�޸�project��
    public int pdelete(Project p);//ɾ��
    public List<Project> selectid(int id);//������ѯ
}
