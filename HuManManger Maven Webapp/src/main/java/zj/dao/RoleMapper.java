package zj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import zj.entity.Menu;
import zj.entity.Role;
import zj.entity.RoleMenu;

public interface RoleMapper {
	@Select("select * from role limit #{arg0},#{arg1}")
   List<Role> selByPage(int pageStart,int pageSize);
	@Select("select count(*) from role")
	int selCount();
	@Update("update role set rname=#{rname},sort=#{sort},remark=#{remark} where rid=#{rid}")
	int update(Role role);
	@Insert("insert into role (rname,sort,remark) values (#{rname},#{sort},#{remark})")
	int save(Role role);
	@Delete("delete from role where rid=#{rid}")
	int delete(int rid);
	
	/*//角色权限
		//查询所有菜单项，并获取到对应角色编号的菜单
	@Select("select ")
	   List<Menu> findMenuByRid(int rid);
		//往角色菜单中间表中插入数据
	@Insert("insert into role_menu(rid,mid) values (#{rid},#{mid})")
	     int insertMenuForRole(RoleMenu roleMenu);
		//删除中间表中指定角色id对应的数据
	   @Delete("delete from role_menu where role.rid="+"rid")
	     int deletemenuForRole(int rid);*/
		
}
