﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="_0225.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
    <style type="text/css" media="screen">
    html {
        height: 100%;
        width: 100%;
    }

    #map {
        position: absolute;
        top: 25%;
        left: 0;
        height: 75%;
        width: 100vw;
    }

    #body {
        height: 100%;
        width: 100vw;
        position: relative;
        top: 0;
        left: 0;
    }
    </style>
    

<body>
    <div class="body">
        <h1>King Tzeng的鐵人地圖</h1>
        <div id="map"></div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>
        function initMap() {
            var Station_latlng = { lat: 25.046891, lng: 121.516602 }; // 台北車站的經緯度
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 14, //放大的倍率
                center: Station_latlng //初始化的地圖中心位置
            });

            //--------下面是呼叫一個新marker------

            var marker = new google.maps.Marker({
                position: Station_latlng, //marker的放置位置
                map: map //這邊的map指的是第四行的map變數
            });

        }
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC_Za7RqKvUuEg2Nln0EcpUVN3k2fZtDuE&callback=initMap">
    </script>
</body>

</html>

</asp:Content>
