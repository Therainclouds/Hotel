<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="HotelManage.Map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        #container {
            width: 1900px;
            height: 950px;
        }

        .info {
            width: 30rem;
        }

       
    </style>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="container"></div>
        <div class="info">
            <h4 id='status'></h4>
            <hr />
            <p id='result'></p>
            <hr />
            <p>由于众多浏览器已不再支持非安全域的定位请求，为保位成功率和精度，请升级您的站点到HTTPS。</p>
        </div>
        


        <script type="text/javascript" src="https://webapi.amap.com/maps?v=2.0&key=c95f6707dfd854ba4f68b591c7bdd15d"></script>

        <%--浏览器精确定位--%>
        <script type="text/javascript">
            var map = new AMap.Map('container', {
                resizeEnable: true,
                zoom: 13,
                viewMode: '3D'
            });
            AMap.plugin('AMap.Geolocation', function () {
                var geolocation = new AMap.Geolocation({
                    enableHighAccuracy: true,//是否使用高精度定位，默认:true
                    timeout: 10000,          //超过10秒后停止定位，默认：5s
                    buttonPosition: 'RB',    //定位按钮的停靠位置
                    buttonOffset: new AMap.Pixel(10, 20),//定位按钮与设置的停靠位置的偏移量，默认：Pixel(10, 20)
                    zoomToAccuracy: true,   //定位成功后是否自动调整地图视野到定位点

                });
                map.addControl(geolocation);
                geolocation.getCurrentPosition(function (status, result) {
                    if (status == 'complete') {
                        onComplete(result)
                    } else {
                        onError(result)
                    }
                });
            });
            //解析定位结果
            function onComplete(data) {
                document.getElementById('status').innerHTML = '定位成功'
                var str = [];
                str.push('定位结果：' + data.position);
                str.push('定位类别：' + data.location_type);
                if (data.accuracy) {
                    str.push('精度：' + data.accuracy + ' 米');
                }//如为IP精确定位结果则没有精度信息
                str.push('是否经过偏移：' + (data.isConverted ? '是' : '否'));
                document.getElementById('result').innerHTML = str.join('<br>');
            }
            //解析定位错误信息
            function onError(data) {
                document.getElementById('status').innerHTML = '定位失败'
                document.getElementById('result').innerHTML = '失败原因排查信息:' + data.message;
            }
            //罗盘
            AMap.plugin([
                'AMap.ControlBar',
            ], function () {

                // 添加 3D 罗盘控制
                map.addControl(new AMap.ControlBar());
            });



        </script>
       
    </form>
</body>
</html>
