package zj.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Staff_info;
import zj.entity.Staff_leave;
import zj.service.Staff_leaveService;

@Controller
@RequestMapping("/leave")
public class Staff_leaveController {
	@Autowired
	private Staff_leaveService ser;
    //查询离职表 
    @RequestMapping("/selectleave")
    @ResponseBody
	public List<Map<String,Object>> selectleave(){
		List<Map<String,Object>> list=ser.selectleave();
		return list;
	}
    
    //查询在职员工
    @RequestMapping("/selectinfostu")
    @ResponseBody
    public List<Staff_info> selectinfostu() {
    	// TODO Auto-generated method stub
    	return ser.selectinfostu();
    }
    
         //查询员工
         @RequestMapping("/selectstaffinfo")
         @ResponseBody
	     public List<Staff_info> selectstaffinfo() {
	     	// TODO Auto-generated method stub
	     	return ser.selectstaffinfo();
	     }
	     //查询部门
         @RequestMapping("/selectdepartment")
         @ResponseBody
         public List<Department> selectdepartment() {
		    // TODO Auto-generated method stub
	    	return ser.selectdepartment();
     	}
        //查询职务
        @RequestMapping("/selectposition")
        @ResponseBody
        public List<Position> selectposition() {
	     	// TODO Auto-generated method stub
	     	return ser.selectposition();
	    }
	    //查询单个
	    @RequestMapping("/selectleaveByID")
	    @ResponseBody
		public Staff_leave selectleaveByID(int leaveId){
	    	System.out.println(ser.selectleaveByID(leaveId).getStaStaffId());
			return ser.selectleaveByID(leaveId);
		}  
	    //添加和修改
		@RequestMapping("/insertorupdate")
		public void insertorupdate(@RequestBody Staff_leave leave,HttpServletResponse response) throws IOException{
			PrintWriter out=response.getWriter();
				int i=ser.insertorupdate(leave);
				 if(i>0){
					 out.print("成功!");//往前台打印text文本格式
				 }else{
					 out.print("失败!");
				 }
		}
		//删除
		@RequestMapping("/deleteleave")
	    @ResponseBody
		public void deleteleave(int leaveId){
			if (leaveId!=0) {
				ser.deleteleave(leaveId);
			}else {
				System.out.println("删除失败");
			}
			
		}
			
}
