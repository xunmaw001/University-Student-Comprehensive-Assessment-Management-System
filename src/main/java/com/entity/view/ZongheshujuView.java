package com.entity.view;

import com.entity.ZongheshujuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 综合数据
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-04-10 08:00:31
 */
@TableName("zongheshuju")
public class ZongheshujuView  extends ZongheshujuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZongheshujuView(){
	}
 
 	public ZongheshujuView(ZongheshujuEntity zongheshujuEntity){
 	try {
			BeanUtils.copyProperties(this, zongheshujuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
