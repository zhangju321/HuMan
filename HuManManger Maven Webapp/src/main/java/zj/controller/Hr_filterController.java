package zj.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.Hr_recruit_filter;
import zj.service.Hr_filterService;

@Controller
@RequestMapping("/filter")
public class Hr_filterController {
@Autowired
private Hr_filterService service;
@ResponseBody
@RequestMapping("/filtersave")
public int Save(Hr_recruit_filter filter){
	System.out.println(filter);
	return service.saveFilter(filter);
}
/*��ѯȫ����Ƹ�ƻ�*/
@RequestMapping("/select")
@ResponseBody
public List<Map<String,Object>> selectFilter(int id){
	return service.selectFilter(id);
}
/*����id��ѯ*/
@RequestMapping("/filterId")
@ResponseBody
public List<Map<String,Object>> selectId(@RequestBody int filterId){
	return service.selectId(filterId);
}
/*�޸�*/
@RequestMapping("/filterUpdate")
@ResponseBody
public int updateFilter(Hr_recruit_filter filter){
	return service.updateFilter(filter);
}
/*��һ��ɸѡ*/
@ResponseBody
@RequestMapping("/filterOneUpdate")
public void oneSave(Hr_recruit_filter filter){
	service.oneUpdate(filter);
}
/*�ڶ���ɸѡ*/
@ResponseBody
@RequestMapping("/filterTwoUpdate")
public void twoSave(Hr_recruit_filter filter){
	service.twoUpdate(filter);
}
/*ɾ��*/
@ResponseBody
@RequestMapping("/filterDelete")
public int planDelete(@RequestBody int filterId){
	return service.Delete(filterId);
}
/*��ѯ������������Ա*/
@ResponseBody
@RequestMapping("/filterName")
public List<Map<String,Object>> FilterName(){
	return service.FilterName();
}
/*��ѯδɸѡ�˲�*/
@RequestMapping("/selectpool")
@ResponseBody
public List<Map<String,Object>> selectpool(){
	return service.selectpool();
}
/*��ѯȫ���˲�*/
@RequestMapping("/selectid")
@ResponseBody
public List<Map<String,Object>> selectid (@RequestBody int expertId){
	return service.selectid(expertId);
}
}