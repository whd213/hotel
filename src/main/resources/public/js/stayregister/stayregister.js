layui.use(['table','layer'],function(){
    var layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery,
        table = layui.table;
    //用户列表展示
    var tableIns = table.render({
        //id:'saleChanceTable',
        //容器元素的ID属性值
        elem: '#stayregisterList',
        //访问数据的URL（后台数据接口）
        url : ctx+'/Stayregister/list',
        //单元格最小宽度
        cellMinWidth : 95,
        //开启分页
        page : true,
        //容器的高度 full—差值
        height : "full-125",
        //每页页数的可选项
        limits : [10,15,20,25],
        //默认每页显示的数量
        limit : 10,
        //开启头部工具栏
        /*toolbar: "#toolbarDemo",*/
        id : "stayregisterListTable",
        //表头
        cols : [[
            /*{type: "checkbox", fixed:"center"},*/
            //field：要求field属性值与返回的数据中对应的属性字段名一致
            //title:设置列的标题
            //sort：是否允许排序（默认false）
            //fixed：固定列
            {field: "id", title:'编号',fixed:"true"},
            {field: "roomNumber", title:'房间号',fixed:"true"},
            {field: 'teamName', title: '接待对象',align:"center"},
            {field: 'changingroomnumber', title: '换房次数', align:'center'},
            {field: 'changroomtime', title: '换房时间', align:'center'},
            {field: 'registertime', title: '登记时间',  align:'center'},
            {field: 'paytime', title: '结账时间', align:'center'},
            {field: 'sumconst', title: '总费用', align:'center'},
            {title: '操作', templet:'#op',fixed:"right",align:"center", minWidth:150}
        ]]
    });

    // 多条件搜索
    $(".search_btn").on("click",function(){
        table.reload("stayregisterListTable",{
            page: {
                curr: 1 //重新从第 1 页开始
            },
            //设置需要传递给后端的参数
            where: {//设定异步数据接口的额外参数，任意设
                //通过文本框/下拉框的值，设置传递的参数
                startime: $("input[name='startime']").val(),  //起始时间
                overtime: $("input[name='overtime']").val()  //截至时间
            }
        })
    });


    /**
     * 行工具栏的监听
     */
    table.on('tool(stayregisters)',function (data) {
        //判断类型
        if(data.event =="dev"){//开发

            //打开计划项开发与详情页面
            //openCusDevPlanDialog('房间开发',data.data.id);
            //console.log(data.data);

        }else if (data.event =="edit"){//详情

            //打开计划项开发与详情页面
            openCusDevPlanDialog('房间信息详情',data.data.id);

        }
    });

    /**
     * 打开房间开发和房间信息详情页面
     */
    function openCusDevPlanDialog(title, id) {
        //iframe层
        layui.layer.open({
            //类型
            type : 2,
            //标题
            title : title,
            //宽高
            area:["750px","550px"],
            //url地址
            content : ctx + "/Stayregister/toStayregisterPage?id="+id,
            //可以最大化和最小化
            maxmin:true
        });
    }



    //监听头工具栏事件
    /*table.on('toolbar(stayregisters)', function(obj){
        var checkStatus = table.checkStatus(obj.config.id);
        switch(obj.event){
            case "add":
                openAddOrUpdateSaleChanceDialog();
                break;
            case "del":
                delSaleChance(checkStatus.data);
                break;
        };
    });*/





});
