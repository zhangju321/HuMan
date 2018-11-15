package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.PayStateDao;
@Service
public class PayStateServiceImpl implements PayStateService{
	@Autowired
	private PayStateDao dao;
	//查询全部
	@Override
	public List<Map<String, Object>> queryPay() {
		// TODO Auto-generated method stub
		return dao.queryPay();
	}
	//批量修改薪资状态
	@Override
	public int updateState(String[] check_val) {
		int[] intArr=new int[0];//生成一个int数组
		intArr=new int[check_val.length];//把String数组的长度赋给int数组
		for (int i = 0; i < check_val.length; i++) {
			intArr[i]=Integer.parseInt(check_val[i]);//循环把String数组转换int数组
		}
		if (check_val!=null&&intArr!=null) {
			for (int i = 0; i < intArr.length; i++) {//已经生成的那个int数组，根据它的长度循环往表里面添加数据
				int a=intArr[i];
				dao.updateState(a);
			}
			return 1;
		}
		return 0;//返回正确的结果，返回1
	}
	@Override
	public int updateState2(String[] check_val) {
		int[] intArr=new int[0];//生成一个int数组
		intArr=new int[check_val.length];//把String数组的长度赋给int数组
		for (int i = 0; i < check_val.length; i++) {
			intArr[i]=Integer.parseInt(check_val[i]);//循环把String数组转换int数组
		}
		if (check_val!=null&&intArr!=null) {
			for (int i = 0; i < intArr.length; i++) {//已经生成的那个int数组，根据它的长度循环往表里面添加数据
				int a=intArr[i];
				dao.updateState2(a);
			}
			return 1;
		}
		return 0;//返回正确的结果，返回1
	}
	//根据时间模糊查询薪资
	@Override
	public List<Map<String, Object>> queryTime(String tax_time) {
		// TODO Auto-generated method stub
		return dao.queryTime(tax_time);
	}
}
