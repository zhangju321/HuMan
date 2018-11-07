package zj.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
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

import zj.entity.hr_check;
import zj.entity.Pay;
import zj.entity.Project;

import zj.entity.Welfare;
import zj.service.PayService;

@Controller
@RequestMapping("/pay")
public class PayController {
	@Autowired
	private PayService ser;
	
	
	//н�ʻ��������
	@RequestMapping("/psave")
	@ResponseBody
	public int save(Pay pay){
	    int num=ser.paySave(pay);
	    return num;
	}
	//pay��ѯ
	@RequestMapping("/queryAll")
	@ResponseBody
	public List<Map<String, Object>> queryAll(){
		
		List<Map<String, Object>> list=ser.queryAll();
		return list;
		
	}


	//��ѯн�ʿۿ��׼�Ϳ���ͳ��
	@RequestMapping("/queryAll2")
	@ResponseBody
	public PageInfo<Map<String, Object>> queryAll2(@RequestParam(required =false, defaultValue = "1") Integer startPage){
		PageHelper.startPage(startPage, 5);
		 List<Map<String, Object>> list=ser.queryAll2();
		 PageInfo<Map<String, Object>> pi = new PageInfo<>(list);
		 return pi;
		/*List<Map<String, Object>> list=ser.queryAll2();
		return list;*/
		
	}
	//��ѯ����ְ����Ա����
	@RequestMapping("/queryPeo")
	@ResponseBody
	public List<Map<String, Object>> queryPeo(){
		List<Map<String, Object>> list=ser.queryPeo();
		return list;
		
	}
	
	//��ѯ��������ְ����Ա����
			@RequestMapping("/queryid")
			@ResponseBody
			public List<Map<String,Object>> query(@RequestBody int id){
				List<Map<String,Object>> listdepar=ser.queryId(id);
				return listdepar;
			}
			
			
			
			
			/*public List<Map<String, Object>> queryAll3(){
				
				List<Map<String, Object>> listpay=ser.queryAll3();
				return listpay;
				
			}*/
			
		
			@RequestMapping("/queryAll3")
			@ResponseBody
			public Map<String,Object> queryAll3(){
				System.out.println("ddd");
				List<Map<String,Object>> list=ser.queryAll3();
				Map<String, Object> map = new HashMap<String, Object>();
		        map.put("code", 200);
		        map.put("msg", "");
		        map.put("count",1000);
		        map.put("data",list);
				return map;
			}

			//��ѯ���ڿۿ��׼��
			@RequestMapping("/querycheck")
			@ResponseBody
			public List<Map<String, Object>> querycheck(){
				
				List<Map<String, Object>> listcheck=ser.queryCheck();
				return listcheck;
				
			}
			
			//��ѯ���ڿۿ��׼��
			@RequestMapping("/querypay")
			@ResponseBody
			public PageInfo<Map<String, Object>> querypay(@RequestParam(required =false, defaultValue = "1") Integer startPage){
				PageHelper.startPage(startPage, 5);
				 List<Map<String, Object>> list=ser.queryPay();
				 PageInfo<Map<String, Object>> pi2 = new PageInfo<>(list);
				 return pi2;	
			}
			//��ѯ��������ְ����Ա����
			@RequestMapping("/selectid")
			@ResponseBody
			public List<Map<String,Object>> selectid(@RequestBody int id){
				List<Map<String,Object>> listpayid=ser.selectid(id);
				return listpayid;
			}
			//�޸�н��
			@RequestMapping("/payupdate")
			public void payupdate(Pay pay,HttpServletResponse response) throws IOException{
				System.out.println("�޸�");
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out=response.getWriter();
			   ser.payUpdate(pay);
			   out.print("�޸ĳɹ�");
			}
			//ɾ��н��
			@RequestMapping("/paydelete")
			public void paydelete(Pay pay,HttpServletResponse response) throws IOException{
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out=response.getWriter();
				ser.payDelete(pay);
				out.print("ɾ���ɹ�");
			}
			
			//������ѯ
			@RequestMapping("/querypayid")
			@ResponseBody
			public List<Map<String,Object>> queryPayId(@RequestBody int id){
				List<Map<String,Object>> listpayid=ser.queryPayId(id);
				System.out.println(id);
				System.out.println(listpayid);
				return listpayid;
				
			}
			
}
