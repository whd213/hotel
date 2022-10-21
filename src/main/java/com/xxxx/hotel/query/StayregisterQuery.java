package com.xxxx.hotel.query;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.xxxx.hotel.base.BaseQuery;

import java.util.Date;

/**
 * 财务查询
 */
public class StayregisterQuery extends BaseQuery {

    //分页参数

    //条件查询
    private String startime;//起始时间

    private String overtime;//结束时间

    public String getStartime() {
        return startime;
    }

    public void setStartime(String startime) {
        this.startime = startime;
    }

    public String getOvertime() {
        return overtime;
    }

    public void setOvertime(String overtime) {
        this.overtime = overtime;
    }
}
