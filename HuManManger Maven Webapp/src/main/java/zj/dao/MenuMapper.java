package zj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import zj.entity.Menu;

public interface MenuMapper {
	@Select("select * from menu where pid=0")
    List<Menu> selAll();
	@Select("select * from menu where pid=#{0}")
	List<Menu> selByPid(int pid);
	//查询二级菜单
	@Select("select * from menu where pid=#{arg0} and id in (select mid from role_menu where rid=#{param1})")
	List<Menu> selByPidRid(int pid,int roleid);
}
