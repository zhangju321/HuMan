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

import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Staff_info;
import zj.entity.Staff_reinstatement;
import zj.service.Staff_reinstatementService;

@Controller
@RequestMapping("/Rein")
public class Staff_reinstatementController {
	@Autowired
	private Staff_reinstatementService ser;
    //��ѯ��ְ�� 
    @RequestMapping("/selectRein")
    @ResponseBody
	public PageInfo<Map<String,Object>> selectRein(@RequestParam(required = false, defaultValue = "1") Integer startPage,
            @RequestParam(required = false, defaultValue = "2") Integer PageSize){
    	PageHelper.startPage(startPage,PageSize);
		List<Map<String,Object>> list=ser.selectRein();
    	PageInfo<Map<String,Object>> pi=new PageInfo<Map<String,Object>>(list);
		return pi;
	}
    
    
    //��ѯ��ְԱ��
    @RequestMapping("/selectinfostu")
    @ResponseBody
    public List<Staff_info> selectinfostu() {
    	// TODO Auto-generated method stub
    	return ser.selectinfostu();
    }
    
         //��ѯԱ��
         @RequestMapping("/selectstaffinfo")
         @ResponseBody
	     public List<Staff_info> selectstaffinfo() {
	     	// TODO Auto-generated method stub
	     	return ser.selectstaffinfo();
	     }
	     //��ѯ����
         @RequestMapping("/selectdepartment")
         @ResponseBody
         public List<Department> selectdepartment() {
		    // TODO Auto-generated method stub
	    	return ser.selectdepartment();
     	}
        //��ѯְ��
        @RequestMapping("/selectposition")
        @ResponseBody
        public List<Position> selectposition() {
	     	// TODO Auto-generated method stub
	     	return ser.selectposition();
	    }
	    //��ѯ����
	    @RequestMapping("/selectReinid")
	    @ResponseBody
		public Staff_reinstatement selectReinid(int reinstatementId){
			return ser.selectReinid(reinstatementId);
		}  
	    //��Ӻ��޸�
		@RequestMapping("/insertorupdate")
		public void insertorupdate(@RequestBody Staff_reinstatement Rein,HttpServletResponse response) throws IOException{
			PrintWriter out=response.getWriter();
				int i=ser.insertorupdate(Rein);
				 if(i>0){
					 out.print("�ɹ�!");//��ǰ̨��ӡtext�ı���ʽ
				 }else{
					 out.print("ʧ��!");
				 }
		}
		//ɾ��
		@RequestMapping("/deleteRein")
	    @ResponseBody
		public void deleteRein(int reinstatementId){
			if (reinstatementId!=0) {
				ser.deleteRein(reinstatementId);
			}else {
				System.out.println("ɾ��ʧ��");
			}
			
		}
}
