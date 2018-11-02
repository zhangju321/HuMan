package zj.service;

import java.util.List;

import zj.entity.EasyUIDatagrid;
import zj.entity.Menu;
import zj.entity.Role;

public interface RoleService {
  EasyUIDatagrid showRole(int pageSize,int pageNumber);
  int update(Role role);
  List<Menu> showPrivilege(int roleid);
  int save(Role role);
  int delete(int rid);
}
