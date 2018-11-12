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
	public int save(String[] array,String tax_time,String tax_salary,String insurance,String endowment_insurance,String medical_insurance,String birth_insurance,String unemployment_insurance,String injury_insurance,String housing_fund,String B_withhold,String D_withhold,String endowment_insurance_d,String medical_insurance_d,String birth_insurance_d,String unemployment_insurance_d,String injury_insurance_d,String housing_fund_d,String subvention,String Bonus,String after_tax_salary){
		//int num=ser.paySave(pay);
		/* System.out.println(tax_time+"����");
	    System.out.println(tax_salary+"����");

	    System.out.println(insurance+"����");
	    System.out.println(endowment_insurance+"����");
	    System.out.println(medical_insurance+"����");
	    System.out.println(birth_insurance+"����");
	    System.out.println(unemployment_insurance+"����");
	    System.out.println(injury_insurance+"����");
	    System.out.println(housing_fund+"����");
	    System.out.println(B_withhold+"����");
	    System.out.println(D_withhold+"����");
	    System.out.println(endowment_insurance_d+"����");
	    System.out.println(medical_insurance_d+"����");
	    System.out.println(birth_insurance_d+"����");
	    System.out.println(unemployment_insurance_d+"����");
	    System.out.println(injury_insurance_d+"����");
	    System.out.println(housing_fund_d+"����");

	    System.out.println(subvention+"����");
	    System.out.println(Bonus+"����");
	    System.out.println(after_tax_salary+"����");*/
		Pay pay=new Pay();
		pay.setTax_time(tax_time);
		pay.setTax_salary(Double.parseDouble(tax_salary));
		pay.setInsurance(Double.parseDouble(insurance));
		pay.setEndowment_insurance(Double.parseDouble(endowment_insurance));
		pay.setMedical_insurance(Double.parseDouble(medical_insurance));
		pay.setBirth_insurance(Double.parseDouble(birth_insurance));
		pay.setUnemployment_insurance(Double.parseDouble(unemployment_insurance));
		pay.setInjury_insurance(Double.parseDouble(injury_insurance));
		pay.setHousing_fund(Double.parseDouble(housing_fund));
		pay.setB_withhold(Double.parseDouble(B_withhold));
		pay.setD_withhold(Double.parseDouble(D_withhold));
		pay.setEndowment_insurance_d(Double.parseDouble(endowment_insurance_d));
		pay.setMedical_insurance_d(Double.parseDouble(medical_insurance_d));
		pay.setBirth_insurance_d(Double.parseDouble(birth_insurance_d));
		pay.setUnemployment_insurance_d(Double.parseDouble(unemployment_insurance_d));
		pay.setInjury_insurance_d(Double.parseDouble(injury_insurance_d));
		pay.setHousing_fund_d(Double.parseDouble(housing_fund_d));
		pay.setSubvention(Double.parseDouble(subvention));
		pay.setBonus(Double.parseDouble(Bonus));
		pay.setAfter_tax_salary(Double.parseDouble(after_tax_salary));
		int dd=0;
		for (String string : array) {
			pay.setStaff_id(Integer.parseInt(string));
			System.out.println(pay.toString());
			dd=ser.paySave(pay);
		}
		return dd;
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
