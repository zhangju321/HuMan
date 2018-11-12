package zj.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import zj.entity.Project;
import zj.service.PayStateService;
@RequestMapping("/paystate")
@Controller
public class PayStateController {
	@Autowired
	private PayStateService ser;
    int[] id;
	//查询薪资修改状态
		@RequestMapping("/queryAll")
		@ResponseBody
		public List<Map<String, Object>> queryAll2(){
			List<Map<String, Object>> list=ser.queryPay();
			return list;
		}
		//批量修改薪资计划状态(禁用)
		@RequestMapping
		("/updateCheck")
		public void updateCheck(String[] check_val,HttpServletResponse response) throws IOException{
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			System.out.println(check_val);
			int result=ser.updateState(check_val);
			if (result!=0) {
				out.print("成功");
			}else{
				out.print("失败");
				};
		}
		
		//批量修改薪资计划状态(启用)
				@RequestMapping
				("/updateCheck2")
				public void updateCheck2(String[] check_val,HttpServletResponse response) throws IOException{
					response.setContentType("text/html;charset=utf-8");
					PrintWriter out=response.getWriter();
					System.out.println(check_val);
					int result=ser.updateState2(check_val);
					if (result!=0) {
						out.print("成功");
					}else{
						out.print("失败");
						};
				}
}
