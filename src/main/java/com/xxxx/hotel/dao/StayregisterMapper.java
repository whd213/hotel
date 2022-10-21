package com.xxxx.hotel.dao;

import com.xxxx.hotel.base.BaseMapper;
import com.xxxx.hotel.vo.Stayregister;
import com.xxxx.hotel.vo.SumStayregister;

public interface StayregisterMapper extends BaseMapper<Stayregister,Integer> {

    Stayregister selectByPrimaryKeys(Integer id);

    SumStayregister selectSum();
}