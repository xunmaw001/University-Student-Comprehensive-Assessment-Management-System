package com.dao;

import com.entity.ZongheshujuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZongheshujuVO;
import com.entity.view.ZongheshujuView;


/**
 * 综合数据
 * 
 * @author 
 * @email 
 * @date 2023-04-10 08:00:31
 */
public interface ZongheshujuDao extends BaseMapper<ZongheshujuEntity> {
	
	List<ZongheshujuVO> selectListVO(@Param("ew") Wrapper<ZongheshujuEntity> wrapper);
	
	ZongheshujuVO selectVO(@Param("ew") Wrapper<ZongheshujuEntity> wrapper);
	
	List<ZongheshujuView> selectListView(@Param("ew") Wrapper<ZongheshujuEntity> wrapper);

	List<ZongheshujuView> selectListView(Pagination page,@Param("ew") Wrapper<ZongheshujuEntity> wrapper);
	
	ZongheshujuView selectView(@Param("ew") Wrapper<ZongheshujuEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ZongheshujuEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ZongheshujuEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ZongheshujuEntity> wrapper);

    List<Map<String, Object>> kechengmingchengzonghechengjiSectionStat(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ZongheshujuEntity> wrapper);


}
