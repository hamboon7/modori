package com.modori.model;

public class DeclareVO {
	private int declare_num;
	private int declare_stu_num;
	private int reporter_stu_num;
	private String declare_pro_name;
	private String declare_category;
	
	public DeclareVO(int declare_num, int declare_stu_num, int reporter_stu_num, String declare_pro_name,
			String declare_category) {
		super();
		this.declare_num = declare_num;
		this.declare_stu_num = declare_stu_num;
		this.reporter_stu_num = reporter_stu_num;
		this.declare_pro_name = declare_pro_name;
		this.declare_category = declare_category;
	}

	public int getDeclare_num() {
		return declare_num;
	}

	public void setDeclare_num(int declare_num) {
		this.declare_num = declare_num;
	}

	public int getDeclare_stu_num() {
		return declare_stu_num;
	}

	public void setDeclare_stu_num(int declare_stu_num) {
		this.declare_stu_num = declare_stu_num;
	}

	public int getReporter_stu_num() {
		return reporter_stu_num;
	}

	public void setReporter_stu_num(int reporter_stu_num) {
		this.reporter_stu_num = reporter_stu_num;
	}

	public String getDeclare_pro_name() {
		return declare_pro_name;
	}

	public void setDeclare_pro_name(String declare_pro_name) {
		this.declare_pro_name = declare_pro_name;
	}

	public String getDeclare_category() {
		return declare_category;
	}

	public void setDeclare_category(String declare_category) {
		this.declare_category = declare_category;
	}

	@Override
	public String toString() {
		return "declare_num=" + declare_num + ", declare_stu_num=" + declare_stu_num + ", reporter_stu_num="
				+ reporter_stu_num + ", declare_pro_name=" + declare_pro_name + ", declare_category=" + declare_category;
	}
	
	
}
