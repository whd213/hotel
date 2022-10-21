package com.xxxx.hotel.dao;

import com.xxxx.hotel.base.BaseMapper;
import com.xxxx.hotel.vo.Hotel;

import java.util.List;

public interface HotelMapper extends BaseMapper<Hotel,Integer> {

    List<Hotel> selectHotel();
}