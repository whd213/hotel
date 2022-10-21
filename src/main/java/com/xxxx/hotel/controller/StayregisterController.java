package com.xxxx.hotel.controller;

import com.xxxx.hotel.base.BaseController;
import com.xxxx.hotel.query.StayregisterQuery;
import com.xxxx.hotel.service.StayregisterService;
import com.xxxx.hotel.vo.Stayregister;
import com.xxxx.hotel.vo.SumStayregister;
import io.swagger.annotations.Api;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping("Stayregister")
@Api(tags = "财务管理")
public class StayregisterController extends BaseController {

    @Resource
    private StayregisterService stayregisterService;

    /**
     * 分页多条件查询财务
     * @param stayregisterQuery
     * @return
     */
    @RequestMapping("list")
    @ResponseBody
    public Map<String,Object> queryStayregisterByParams(StayregisterQuery stayregisterQuery){

        return stayregisterService.queryStayregisterByParams(stayregisterQuery);
    }

    /**
     * 进入财务管理页面
     *  查寻用户总金额，总房间数
     * @return
     */
    @RequestMapping("index")
    public String index(HttpServletRequest request){
        //查寻用户总金额，总房间数
        SumStayregister sumStayregister=stayregisterService.selectSum();
        //request.getSession().setAttribute("sumStayregister",sumStayregister);
        request.setAttribute("sumStayregister",sumStayregister);
        return "stayregister/stayregister";
    }

    /**
     * 打开计划项开发与详情页面
     * @param id
     * @return
     */
    @RequestMapping("toStayregisterPage")
    public String toCusDevPlanPage(Integer id, HttpServletRequest request){

        //通过ID查询营销机会对象
        Stayregister stayregister=stayregisterService.selectByPrimaryKeys(id);

        request.setAttribute("stayregister",stayregister);

        return "stayregister/stayregisterdata";
    }




}
