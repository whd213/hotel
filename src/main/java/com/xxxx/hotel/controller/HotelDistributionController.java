package com.xxxx.hotel.controller;

import com.xxxx.hotel.base.BaseController;
import com.xxxx.hotel.service.SelectHotelService;
import com.xxxx.hotel.vo.Hotel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("Hotels")
public class HotelDistributionController extends BaseController {

    @Resource
    private SelectHotelService selectHotelService;

    @RequestMapping("index")
    public String index(){
        return "hotelDistribution/info";
    }

    @RequestMapping("hotel")
    @ResponseBody
    public List<Hotel> selectHotel(){

        List<Hotel> hotels=selectHotelService.selectHotel();

        return hotels;
    }
}
