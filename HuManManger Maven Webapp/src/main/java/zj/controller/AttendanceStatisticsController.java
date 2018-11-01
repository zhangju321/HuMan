package zj.controller;

import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.hr_go_out;
import zj.entity.travel;
import zj.entity.vocation;
import zj.entity.work_register;
import zj.service.AttendanceStatisticsService;


@Controller
@RequestMapping("/as")
public class AttendanceStatisticsController {
	@Autowired
	private AttendanceStatisticsService ser;
    //查询考勤统计 
    @RequestMapping("/selectas")
    @ResponseBody
	public List<Map<String,Object>> selectas(){
		List<Map<String,Object>> list=ser.selectas();
		return list;
	}
    //查询出差
    @RequestMapping("/selectout")
    @ResponseBody
	public List<travel> selecttra(int staffid){
		List<travel> list=ser.selecttra(staffid);
		return list;
	}
    //查询外出
    @RequestMapping("/selectout")
    @ResponseBody
	public List<hr_go_out> selectout(int staffid){
		List<hr_go_out> list=ser.selectout(staffid);
		return list;
	}
    //查询请假
    @RequestMapping("/selectout")
    @ResponseBody
	public List<vocation> selectvoc(int staffid){
		List<vocation> list=ser.selectvoc(staffid);
		return list;
	}
    //查询上下班登记
    @RequestMapping("/selectout")
    @ResponseBody
	public List<work_register> selectreg(int staffid){
		List<work_register> list=ser.selectreg(staffid);
		return list;
	}
    


			
}
