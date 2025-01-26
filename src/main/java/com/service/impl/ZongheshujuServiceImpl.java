package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ZongheshujuDao;
import com.entity.ZongheshujuEntity;
import com.service.ZongheshujuService;
import com.entity.vo.ZongheshujuVO;
import com.entity.view.ZongheshujuView;

@Service("zongheshujuService")
public class ZongheshujuServiceImpl extends ServiceImpl<ZongheshujuDao, ZongheshujuEntity> implements ZongheshujuService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZongheshujuEntity> page = this.selectPage(
                new Query<ZongheshujuEntity>(params).getPage(),
                new EntityWrapper<ZongheshujuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZongheshujuEntity> wrapper) {
		  Page<ZongheshujuView> page =new Query<ZongheshujuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZongheshujuVO> selectListVO(Wrapper<ZongheshujuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZongheshujuVO selectVO(Wrapper<ZongheshujuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZongheshujuView> selectListView(Wrapper<ZongheshujuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZongheshujuView selectView(Wrapper<ZongheshujuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<ZongheshujuEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<ZongheshujuEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }
    
    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<ZongheshujuEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> kechengmingchengzonghechengjiSectionStat(Map<String, Object> params, Wrapper<ZongheshujuEntity> wrapper) {
        return baseMapper.kechengmingchengzonghechengjiSectionStat(params, wrapper);
    }



}
