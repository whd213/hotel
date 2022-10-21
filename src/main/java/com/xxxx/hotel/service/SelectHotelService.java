package com.xxxx.hotel.service;

import com.xxxx.hotel.base.BaseService;
import com.xxxx.hotel.dao.HotelMapper;
import com.xxxx.hotel.vo.Hotel;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SelectHotelService extends BaseService<Hotel,Integer> {

    @Resource
    private HotelMapper hotelMapper;

    public List<Hotel> selectHotel(){
        List<Hotel> hotels=hotelMapper.selectHotel();
        return hotels;
    }
}
