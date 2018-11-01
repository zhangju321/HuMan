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

import zj.entity.Project;
import zj.service.ProjectService;


@Controller
@RequestMapping("/project")
public class ProjectController {
	@Autowired
	private ProjectService ser;

	//project表添加
	@RequestMapping("/psave")
	public void psave(Project p,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		ser.psave(p);
		out.print("ok");
	}

	
	//project表查询全部
	@RequestMapping("/findAll")
	@ResponseBody
	public List<Project> findAll(){
		List<Project> list=ser.findAll();
		return list;
	}


	//修改
	@RequestMapping("/pupdate")
	public void pupdate(Project p,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int obj=ser.pupdate(p);
		out.print(p);


	}

//删除
	@RequestMapping("/pdelete")
	public void pdelete(Project p,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		ser.pdelete(p);
		out.print(p);

	}

	//查询单条
		@RequestMapping("/selectid")
		@ResponseBody
		public List<Project> selectid(@RequestBody int id){
			List<Project> list2=ser.selectid(id);
			return list2;
 
		}

		
}
