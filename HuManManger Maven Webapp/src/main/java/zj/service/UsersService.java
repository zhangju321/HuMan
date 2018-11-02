package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.Users;

public interface UsersService {
	 public List<Users> findAll(); 
	 public Users login(Map<String, Object> map);
}
