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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import zj.entity.Staff_contract;
import zj.entity.Staff_info;
import zj.service.Staff_contractService;

@Controller
@RequestMapping("/contract")
public class Staff_contractController {
	@Autowired
	private Staff_contractService ser;
	  //��ѯ��ͬ��Ϣ
    @RequestMapping("/selectcontract")
    @ResponseBody
	public PageInfo<Map<String,Object>> selectcontract(@RequestParam(required = false, defaultValue = "1") Integer startPage,
            @RequestParam(required = false, defaultValue = "2") Integer PageSize){
    	PageHelper.startPage(startPage,PageSize);
		List<Map<String,Object>> list=ser.selectcontract();
    	PageInfo<Map<String,Object>> pi=new PageInfo<Map<String,Object>>(list);
		return pi;
	}
	  //��ѯ��ͬ������Ϣ
    @RequestMapping("/hetongdaoqi")
    @ResponseBody
	public List<Map<String,Object>> hetongdaoqi(){
		List<Map<String,Object>> list=ser.hetongdaoqi();
		return list;
	}
	  //��ѯ���õ�����Ϣ
    @RequestMapping("/shiyongdaoqi")
    @ResponseBody
	public List<Map<String,Object>> shiyongdaoqi(){
		List<Map<String,Object>> list=ser.shiyongdaoqi();
		return list;
	}
    
         //��ѯԱ��
         @RequestMapping("/selectstaffinfo")
         @ResponseBody
	     public List<Staff_info> selectstaffinfo() {
	     	// TODO Auto-generated method stub
	    	 List<Staff_info> list=ser.selectstaffinfo();
	     	  return list;
	     }
	    //��ѯ����
	    @RequestMapping("/selectByID")
	    @ResponseBody
		public Staff_contract selectByID(int contractId){
			return ser.selectByID(contractId);
		}  
	    //��Ӻ��޸�
		@RequestMapping("/insertorupdate")
		public void insertorupdate(@RequestBody Staff_contract contract,HttpServletResponse response) throws IOException{
			PrintWriter out=response.getWriter();
				int i=ser.insertandupdate(contract);
				 if(i>0){
					 out.print("�ɹ�!");//��ǰ̨��ӡtext�ı���ʽ
				 }else{
					 out.print("ʧ��!");
				 }
		}
		//ɾ��
		@RequestMapping("/delete")
	    @ResponseBody
		public void delete(int contractId){
			if (contractId!=0) {
				ser.delete(contractId);
			}else {
				System.out.println("ɾ��ʧ��");
			}
			
		}
	

}
