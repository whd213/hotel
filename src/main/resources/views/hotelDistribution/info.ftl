<#--<%--
  Created by IntelliJ IDEA.
  User: 22448
  To change this template use File | Settings | File Templates.
--%>-->
<!DOCTYPE html>
<html>
<head>
    <title>客户开发计划管理</title>
    <link rel="stylesheet" href="${ctx}/lib/layuimini-2/lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/lib/layuimini-2/css/public.css" media="all">
    <script type="text/javascript" src="${ctx}/lib/layuimini-2/lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/lib/layuimini-2/lib/jquery-3.4.1/jquery-3.4.1.min.js"></script>
    <script src="${ctx}/lib/layuimini-2/js/lay-config.js" charset="utf-8"></script>
    <#--<script type="text/javascript" src="js/editTables.js"></script>-->
    <script type="text/javascript">
        var ctx="${ctx}";
    </script>
</head>
<div class="col-md-9">
    <div class="data_list">
        <div class="container-fluid">
            <div class="row" style="padding-top: 20px;">
                <div class="col-md-12">
                    <#--<%-- 柱状图的容器 --%>-->
                    <#--<div id="monthChart" style="height: 500px"></div>-->
                    <#--<%-- 百度地图的加载 --%>-->
                    <h2 align="center">酒店地区分布图</h2>
                    <#--<%-- 百度地图的容器 --%>-->
                    <div id="baiduMap" style="height: 600px;width: 70%;text-align: center;margin:auto"></div>
                    <#--设置隐藏域，存放经纬度-->
                    <#--<input type="hidden" name="lon" id="lon" value="${hotel.lon}>
                    <input type="hidden" name="lat" id="lat" value="${hotel.lat}>-->
                </div>
            </div>
        </div>
    </div>
</div>
<#--<%--
    关于Echarts报表的使用
        1. 下载Echarts的依赖 （JS文件）
        2. 在需要使用的页面引入Echarts的JS文件
        3. 为 ECharts 准备一个具备高宽的 DOM 容器
        4. 通过 echarts.init 方法初始化一个 echarts 实例并通过 setOption 方法生成一个报表
 --%>-->
<#--<script type="text/javascript" src="statics/echarts/echarts.min.js"></script>-->
<#--<%-- 引用百度地图API文件，需要申请百度地图对应ak密钥--%>-->
<script type="text/javascript" src="https://api.map.baidu.com/api?v=1.0&&type=webgl&ak=yrxymYTyuefnxNtXbZcMU8phABXtu6TG"></script>
<script type="text/javascript">

    /**
     * 通过用户发布的坐标查询
     */
     $.ajax({
         type:"post",
         url: ctx + "/Hotels/hotel",
         /*data:{
             actionName:"location"
         },*/
         success:function (result){

                 loadBaiduMap(result)

         }
     });



    /**
     * 加载百度地图
     */
    function loadBaiduMap(markers) {
        // 加载地图实例
        var map = new BMapGL.Map("baiduMap");
        // 设置地图的中心点
        var point = new BMapGL.Point(116.404, 39.915);
        // 地图初始化，BMapGL.Map.centerAndZoom()方法要求设置中心点坐标和地图级别
        map.centerAndZoom(point, 7);
         // 开启鼠标滚轮缩放
         map.enableScrollWheelZoom(true);
         // 添加比例尺控件
         var zoomCtrl = new BMapGL.ZoomControl();
         map.addControl(zoomCtrl);

         // 判断是否有点标记
         if (markers != null && markers.length > 0) { // 集合中第一个坐标时用户当前所在位置，其他的事云记记录中的对应的经纬度
             // 将用户所在的位置设置为中心点
             //map.centerAndZoom(new BMapGL.Point(markers[0].lon, markers[0].lat), 10);
             // 循环在地图上添加点标记

             for (var i = 1; i < markers.length; i++) {
                 // 创建点标记
                 var marker = new BMapGL.Marker(new BMapGL.Point(markers[i].lon, markers[i].lat));
                 // 在地图上添加点标记
                 map.addOverlay(marker);
                 console.log(markers);
             }
         }
    }
</script>
</html>