package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.UserMapper;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper dao;
	@Override
	public List<Map<String,Object>> UserName() {
		return dao.UserName();
	}
}
