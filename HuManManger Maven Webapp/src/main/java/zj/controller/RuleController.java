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

import zj.entity.attend_rule;
import zj.service.attend_ruleService;

@Controller
@RequestMapping("/rule")
public class RuleController {
@Autowired
private attend_ruleService aRuleService;
@RequestMapping("/ruleFind")
@ResponseBody
public PageInfo<Map<String, Object>> ruleFind(@RequestParam(required = false, defaultValue = "1") Integer startPage){
	 PageHelper.startPage(startPage, 5);
	 List<Map<String, Object>> list=aRuleService.ruleFind();
	 PageInfo<Map<String, Object>> pi = new PageInfo<>(list);
	 return pi;
}
@RequestMapping("/saveOrUpdate")
public void saveOrUpdate(@RequestBody attend_rule rule,HttpServletResponse response) throws IOException{
	response.setContentType("text/html;charset=utf-8");
	PrintWriter out=response.getWriter();
	aRuleService.saveOrUpdate(rule);
	out.print("ok");
}
@RequestMapping("/ruleDelete")
public void ruleDelete(attend_rule rule,HttpServletResponse response) throws IOException{
	response.setContentType("text/html;charset=utf-8");
	PrintWriter out=response.getWriter();
	aRuleService.ruleDelete(rule);
	out.print("ok");
}
@RequestMapping("/ruleFindById")
@ResponseBody
public attend_rule ruleFindById(attend_rule rule){
	attend_rule role=aRuleService.ruleFindById(rule.getKid());
	return role;
}
}
