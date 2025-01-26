package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZongheshujuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZongheshujuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZongheshujuView;


/**
 * 综合数据
 *
 * @author 
 * @email 
 * @date 2023-04-10 08:00:31
 */
public interface ZongheshujuService extends IService<ZongheshujuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZongheshujuVO> selectListVO(Wrapper<ZongheshujuEntity> wrapper);
   	
   	ZongheshujuVO selectVO(@Param("ew") Wrapper<ZongheshujuEntity> wrapper);
   	
   	List<ZongheshujuView> selectListView(Wrapper<ZongheshujuEntity> wrapper);
   	
   	ZongheshujuView selectView(@Param("ew") Wrapper<ZongheshujuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZongheshujuEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<ZongheshujuEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<ZongheshujuEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<ZongheshujuEntity> wrapper);

    List<Map<String, Object>> kechengmingchengzonghechengjiSectionStat(Map<String, Object> params,Wrapper<ZongheshujuEntity> wrapper);


}

