package zj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zj.dao.ProjectDao;
import zj.entity.Project;
@Service
public class ProjectServiceImpl implements ProjectService{
@Autowired 
private ProjectDao dao;
@Transactional
	public void psave(Project p) {
		// TODO Auto-generated method stub
		System.out.println("Service");
		 dao.psave(p);
	}

	@Override
	public List<Project> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Transactional
	public int pupdate(Project p) {
		// TODO Auto-generated method stub
		return dao.pupdate(p);
	}

	@Transactional
	public int pdelete(Project p) {
		// TODO Auto-generated method stub
		return dao.pdelete(p);
	}

	@Override
	public List<Project> selectid(int id) {
		// TODO Auto-generated method stub
		return dao.selectid(id);
	}

	

}
