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

import zj.entity.department;
import zj.entity.position;
import zj.entity.staff_info;
import zj.entity.staff_reinstatement;
import zj.service.staff_reinstatementService;

@Controller
@RequestMapping("/Rein")
public class staff_reinstatementController {
	@Autowired
	private staff_reinstatementService ser;
    //查询复职表 
    @RequestMapping("/selectRein")
    @ResponseBody
	public List<Map<String,Object>> selectRein(){
		List<Map<String,Object>> list=ser.selectRein();
		System.out.println(list.get(0));
		return list;
	}
    
    
    //查询离职员工
    @RequestMapping("/selectinfostu")
    @ResponseBody
    public List<staff_info> selectinfostu() {
    	// TODO Auto-generated method stub
    	return ser.selectinfostu();
    }
    
         //查询员工
         @RequestMapping("/selectstaffinfo")
         @ResponseBody
	     public List<staff_info> selectstaffinfo() {
	     	// TODO Auto-generated method stub
	     	return ser.selectstaffinfo();
	     }
	     //查询部门
         @RequestMapping("/selectdepartment")
         @ResponseBody
         public List<department> selectdepartment() {
		    // TODO Auto-generated method stub
	    	return ser.selectdepartment();
     	}
        //查询职务
        @RequestMapping("/selectposition")
        @ResponseBody
        public List<position> selectposition() {
	     	// TODO Auto-generated method stub
	     	return ser.selectposition();
	    }
	    //查询单个
	    @RequestMapping("/selectReinid")
	    @ResponseBody
		public staff_reinstatement selectReinid(int reinstatementId){
			return ser.selectReinid(reinstatementId);
		}  
	    //添加和修改
		@RequestMapping("/insertorupdate")
		public void insertorupdate(@RequestBody staff_reinstatement Rein,HttpServletResponse response) throws IOException{
			PrintWriter out=response.getWriter();
				int i=ser.insertorupdate(Rein);
				 if(i>0){
					 out.print("成功!");//往前台打印text文本格式
				 }else{
					 out.print("失败!");
				 }
		}
		//删除
		@RequestMapping("/deleteRein")
	    @ResponseBody
		public void deleteRein(int reinstatementId){
			if (reinstatementId!=0) {
				ser.deleteRein(reinstatementId);
			}else {
				System.out.println("删除失败");
			}
			
		}
}
