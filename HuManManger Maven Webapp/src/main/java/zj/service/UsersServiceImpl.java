package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.UsersDao;
import zj.entity.Users;
@Service
public class UsersServiceImpl implements UsersService{
  @Autowired
  private UsersDao dao;
	@Override
	public List<Users> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public Users login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		Users u=dao.login(map);
		System.out.println(u);
		return u;
	}


}
