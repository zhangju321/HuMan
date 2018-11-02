package zj.service;

import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import zj.dao.MenuMapper;
import zj.entity.Attributes;
import zj.entity.Menu;

@Service
public class MenuServiceImpl implements MenuService{
  @Resource
    private MenuMapper mapper;
	@Override
	public List<Menu> selAll() {
		// TODO Auto-generated method stub
		List<Menu> list=mapper.selAll();
		for(Menu menu:list){
			List<Menu> listChildren=mapper.selByPid(menu.getId());
			for(Menu child:listChildren){
				Attributes att=new Attributes();
				att.setFilename(child.getFilename());
				child.setAttributes(att);
			}
			menu.setChildren(listChildren);
		}
		return list;
	}
 
	

}
