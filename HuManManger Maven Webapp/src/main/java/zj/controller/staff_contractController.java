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

import zj.entity.staff_contract;
import zj.entity.staff_info;
import zj.service.staff_contractService;

@Controller
@RequestMapping("/contract")
public class staff_contractController {
	@Autowired
	private staff_contractService ser;
	  //查询合同信息
    @RequestMapping("/selectcontract")
    @ResponseBody
	public List<Map<String,Object>> selectcontract(){
		List<Map<String,Object>> list=ser.selectcontract();
		return list;
	}
         //查询员工
         @RequestMapping("/selectstaffinfo")
         @ResponseBody
	     public List<staff_info> selectstaffinfo() {
	     	// TODO Auto-generated method stub
	     	return ser.selectstaffinfo();
	     }
	    //查询单个
	    @RequestMapping("/selectByID")
	    @ResponseBody
		public staff_contract selectByID(int contractId){
			return ser.selectByID(contractId);
		}  
	    //添加和修改
		@RequestMapping("/insertorupdate")
		public void insertorupdate(@RequestBody staff_contract contract,HttpServletResponse response) throws IOException{
			PrintWriter out=response.getWriter();
				int i=ser.insertandupdate(contract);
				 if(i>0){
					 out.print("成功!");//往前台打印text文本格式
				 }else{
					 out.print("失败!");
				 }
		}
		//删除
		@RequestMapping("/delete")
	    @ResponseBody
		public void delete(int contractId){
			if (contractId!=0) {
				ser.delete(contractId);
			}else {
				System.out.println("删除失败");
			}
			
		}
	

}
