package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Users;

public interface UsersDao {
   public List<Users> findAll(); 
   public Users login(Map<String, Object> map);
}
