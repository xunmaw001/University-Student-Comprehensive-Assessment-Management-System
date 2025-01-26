package com.entity.model;

import com.entity.ZongheshujuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 综合数据
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-04-10 08:00:31
 */
public class ZongheshujuModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 学号
	 */
	
	private String xuehao;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 班级
	 */
	
	private String banji;
		
	/**
	 * 平时成绩
	 */
	
	private Float pingshichengji;
		
	/**
	 * 成绩占比
	 */
	
	private Float chengjizhanbi;
		
	/**
	 * 考勤成绩
	 */
	
	private Float kaoqinchengji;
		
	/**
	 * 考勤占比
	 */
	
	private Float kaoqinzhanbi;
		
	/**
	 * 课堂成绩
	 */
	
	private Float ketangchengji;
		
	/**
	 * 课堂占比
	 */
	
	private Float ketangzhanbi;
		
	/**
	 * 综合成绩
	 */
	
	private Integer zonghechengji;
		
	/**
	 * 成绩评语
	 */
	
	private String chengjipingyu;
		
	/**
	 * 录入日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date lururiqi;
				
	
	/**
	 * 设置：学号
	 */
	 
	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}
	
	/**
	 * 获取：学号
	 */
	public String getXuehao() {
		return xuehao;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：班级
	 */
	 
	public void setBanji(String banji) {
		this.banji = banji;
	}
	
	/**
	 * 获取：班级
	 */
	public String getBanji() {
		return banji;
	}
				
	
	/**
	 * 设置：平时成绩
	 */
	 
	public void setPingshichengji(Float pingshichengji) {
		this.pingshichengji = pingshichengji;
	}
	
	/**
	 * 获取：平时成绩
	 */
	public Float getPingshichengji() {
		return pingshichengji;
	}
				
	
	/**
	 * 设置：成绩占比
	 */
	 
	public void setChengjizhanbi(Float chengjizhanbi) {
		this.chengjizhanbi = chengjizhanbi;
	}
	
	/**
	 * 获取：成绩占比
	 */
	public Float getChengjizhanbi() {
		return chengjizhanbi;
	}
				
	
	/**
	 * 设置：考勤成绩
	 */
	 
	public void setKaoqinchengji(Float kaoqinchengji) {
		this.kaoqinchengji = kaoqinchengji;
	}
	
	/**
	 * 获取：考勤成绩
	 */
	public Float getKaoqinchengji() {
		return kaoqinchengji;
	}
				
	
	/**
	 * 设置：考勤占比
	 */
	 
	public void setKaoqinzhanbi(Float kaoqinzhanbi) {
		this.kaoqinzhanbi = kaoqinzhanbi;
	}
	
	/**
	 * 获取：考勤占比
	 */
	public Float getKaoqinzhanbi() {
		return kaoqinzhanbi;
	}
				
	
	/**
	 * 设置：课堂成绩
	 */
	 
	public void setKetangchengji(Float ketangchengji) {
		this.ketangchengji = ketangchengji;
	}
	
	/**
	 * 获取：课堂成绩
	 */
	public Float getKetangchengji() {
		return ketangchengji;
	}
				
	
	/**
	 * 设置：课堂占比
	 */
	 
	public void setKetangzhanbi(Float ketangzhanbi) {
		this.ketangzhanbi = ketangzhanbi;
	}
	
	/**
	 * 获取：课堂占比
	 */
	public Float getKetangzhanbi() {
		return ketangzhanbi;
	}
				
	
	/**
	 * 设置：综合成绩
	 */
	 
	public void setZonghechengji(Integer zonghechengji) {
		this.zonghechengji = zonghechengji;
	}
	
	/**
	 * 获取：综合成绩
	 */
	public Integer getZonghechengji() {
		return zonghechengji;
	}
				
	
	/**
	 * 设置：成绩评语
	 */
	 
	public void setChengjipingyu(String chengjipingyu) {
		this.chengjipingyu = chengjipingyu;
	}
	
	/**
	 * 获取：成绩评语
	 */
	public String getChengjipingyu() {
		return chengjipingyu;
	}
				
	
	/**
	 * 设置：录入日期
	 */
	 
	public void setLururiqi(Date lururiqi) {
		this.lururiqi = lururiqi;
	}
	
	/**
	 * 获取：录入日期
	 */
	public Date getLururiqi() {
		return lururiqi;
	}
			
}
