package zj.entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Menu {
  private int id;
  @JsonProperty(value="text")
  private String name;
  private List<Menu> children;
  private int pid;
  //节点
  private boolean checked;
  public boolean isChecked() {
	return checked;
}
public void setChecked(boolean checked) {
	this.checked = checked;
}
//只有一个自定义属性
  //@JsonProperty("attributes")
  //多个自定义属性
  private Attributes attributes;
  private String filename;
  public Attributes getAttributes() {
	return attributes;
}
public void setAttributes(Attributes attributes) {
	this.attributes = attributes;
}

public String getFilename() {
	return filename;
}
public void setFilename(String filename) {
	this.filename = filename;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public List<Menu> getChildren() {
	return children;
}
public void setChildren(List<Menu> children) {
	this.children = children;
}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}



}
