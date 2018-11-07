package zj.controller;

import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import zj.service.AttendanceStatisticsService;


@Controller
@RequestMapping("/as")
public class AttendanceStatisticsController {
	@Autowired
	private AttendanceStatisticsService ser;
    //查询考勤统计 
    @RequestMapping("/selectas")
    @ResponseBody
	public PageInfo<Map<String,Object>> selectas(@RequestParam(required = false, defaultValue = "1") Integer startPage,
            @RequestParam(required = false, defaultValue = "2") Integer PageSize){
    	PageHelper.startPage(startPage,PageSize);
		List<Map<String,Object>> list=ser.selectas();
    	PageInfo<Map<String,Object>> pi=new PageInfo<Map<String,Object>>(list);
		return pi;
	}
    //查询出差
    @RequestMapping("/selecttra")
    @ResponseBody
	public List<Map<String,Object>> selecttra(int staffid){
    	List<Map<String,Object>> list=ser.selecttra(staffid);
		return list;
	}
    //查询外出
    @RequestMapping("/selectout")
    @ResponseBody
	public List<Map<String,Object>> selectout(int staffid){
    	List<Map<String,Object>> list=ser.selectout(staffid);
		return list;
	}
    //查询请假
    @RequestMapping("/selectvoc")
    @ResponseBody
	public List<Map<String,Object>> selectvoc(int staffid){
    	List<Map<String,Object>> list=ser.selectvoc(staffid);
    	for (Map<String, Object> map : list) {
			System.out.println(map.get("status_name"));
		}
		return list;
	}
    //查询上下班登记
    @RequestMapping("/selectreg")
    @ResponseBody
	public List<Map<String,Object>> selectreg(int staffid){
    	List<Map<String,Object>> list=ser.selectreg(staffid);
		return list;
	}
    


			
}
