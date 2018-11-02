package zj.controller;

import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.Hr_go_out;
import zj.entity.Travel;
import zj.entity.Vocation;
import zj.entity.Work_register;
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
    @RequestMapping("/selecttra")
    @ResponseBody
	public List<Travel> selecttra(int staffid){
		List<Travel> list=ser.selecttra(staffid);
		return list;
	}
    //查询外出
    @RequestMapping("/selectout")
    @ResponseBody
	public List<Hr_go_out> selectout(int staffid){
		List<Hr_go_out> list=ser.selectout(staffid);
		return list;
	}
    //查询请假
    @RequestMapping("/selectvoc")
    @ResponseBody
	public List<Vocation> selectvoc(int staffid){
		List<Vocation> list=ser.selectvoc(staffid);
		return list;
	}
    //查询上下班登记
    @RequestMapping("/selectreg")
    @ResponseBody
	public List<Work_register> selectreg(int staffid){
		List<Work_register> list=ser.selectreg(staffid);
		return list;
	}
    


			
}
