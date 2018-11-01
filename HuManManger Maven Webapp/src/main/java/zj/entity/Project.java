package zj.entity;

public class Project {
 private int project_id;
 private String project_name;
 private String project_type;
public int getProject_id() {
	return project_id;
}
public void setProject_id(int project_id) {
	this.project_id = project_id;
}
public String getProject_name() {
	return project_name;
}
public void setProject_name(String project_name) {
	this.project_name = project_name;
}
public String getProject_type() {
	return project_type;
}
public void setProject_type(String project_type) {
	this.project_type = project_type;
}
public Project(int project_id, String project_name, String project_type) {
	super();
	this.project_id = project_id;
	this.project_name = project_name;
	this.project_type = project_type;
}
public Project() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "Project [project_id=" + project_id + ", project_name=" + project_name + ", project_type=" + project_type
			+ "]";
}
 
}
