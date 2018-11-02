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
	
	/*//��ɫȨ��
		//��ѯ���в˵������ȡ����Ӧ��ɫ��ŵĲ˵�
	@Select("select ")
	   List<Menu> findMenuByRid(int rid);
		//����ɫ�˵��м���в�������
	@Insert("insert into role_menu(rid,mid) values (#{rid},#{mid})")
	     int insertMenuForRole(RoleMenu roleMenu);
		//ɾ���м����ָ����ɫid��Ӧ������
	   @Delete("delete from role_menu where role.rid="+"rid")
	     int deletemenuForRole(int rid);*/
		
}
