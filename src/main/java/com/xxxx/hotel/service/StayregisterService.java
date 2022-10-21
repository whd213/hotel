package com.xxxx.hotel.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.xxxx.hotel.base.BaseService;
import com.xxxx.hotel.dao.StayregisterMapper;
import com.xxxx.hotel.query.StayregisterQuery;
import com.xxxx.hotel.vo.Stayregister;
import com.xxxx.hotel.vo.SumStayregister;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Service
public class StayregisterService extends BaseService<Stayregister,Integer> {

    @Resource
    private StayregisterMapper stayregisterMapper;

    //多条件分页(返回的数据格式必须满足LayUI中的数据表格要求的格式)
    public Map<String, Object> queryStayregisterByParams(StayregisterQuery stayregisterQuery) {

        Map<String, Object> map = new HashMap<>();

        //开启分页
        PageHelper.startPage(stayregisterQuery.getPage(), stayregisterQuery.getLimit());
        //得到对应的分页对象
        PageInfo<Stayregister> pageInfo = new PageInfo<Stayregister>(stayregisterMapper.selectByParams(stayregisterQuery));

        //设置map对象
        map.put("code", 0);
        map.put("msg", "success");
        map.put("count", pageInfo.getTotal());
        //设置分页好的列表
        map.put("data", pageInfo.getList());
        return map;
    }

    public Stayregister selectByPrimaryKeys(Integer id) {
        return stayregisterMapper.selectByPrimaryKeys(id);
    }

    public SumStayregister selectSum() {
        return  stayregisterMapper.selectSum();
    }
}
