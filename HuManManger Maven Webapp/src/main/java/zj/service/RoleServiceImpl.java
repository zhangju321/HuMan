package zj.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import zj.dao.MenuMapper;
import zj.dao.RoleMapper;
import zj.entity.EasyUIDatagrid;
import zj.entity.Menu;
import zj.entity.Role;

@Service
public class RoleServiceImpl implements RoleService{
@Resource
 private RoleMapper mapper;
@Resource
 private MenuMapper menuMapper;
	@Override
	public EasyUIDatagrid showRole(int pageSize, int pageNumber) {
		// TODO Auto-generated method stub
		EasyUIDatagrid datagrid=new EasyUIDatagrid();
		datagrid.setRows(mapper.selByPage(pageSize*(pageNumber-1), pageSize));
		datagrid.setTotal(mapper.selCount());
		return datagrid;
	}
	@Override
	public int update(Role role) {
		// TODO Auto-generated method stub
		return mapper.update(role);
	}
	
	@Override
	public List<Menu> showPrivilege(int roleid) {
		// TODO Auto-generated method stub
		//当前角色对应的id
		List<Menu> listParent=menuMapper.selByPidRid(0,roleid);
		List<Menu> listRole=new ArrayList<>();
		for(Menu menu:listParent){
			listRole.addAll(menuMapper.selByPidRid(menu.getId(),roleid));
		}
		//所有一级菜单
		List<Menu> listAll=menuMapper.selAll();
		for(Menu menu:listAll){
			List<Menu> listChildren=menuMapper.selByPid(menu.getId());
			for(Menu menu1:listChildren){
				for(Menu menu2:listRole){
					if(menu2.getId()==menu1.getId()){
						menu1.setChecked(true);
					}
				}
			}
			menu.setChildren(listChildren);
		}
		return listAll;
	}
	@Override
	public int save(Role role) {
		// TODO Auto-generated method stub
		return mapper.save(role);
	}
	@Override
	public int delete(int rid) {
		// TODO Auto-generated method stub
		int num=mapper.delete(rid);
		return num;
	}
	

}
