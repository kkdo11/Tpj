<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Javascript files-->
    <script src="/css/maincss.css"></script>
    <script src="/js/mainjs.js"></script>
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/custom.js">
    </script>
    <%--Javascript end--%>

    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">

    <!-- site metas -->
    <title>Covido</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- bootstrap css -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">

    <!-- style css -->
    <link rel="stylesheet" href="/css/style.css">

    <!-- Responsive-->
    <link rel="stylesheet" href="/css/responsive.css">

    <!-- fevicon -->
    <link rel="icon" href="/css/images/fevicon.png" type="image/gif" />

    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <link rel="stylesheet" href="https://rawgit.com/LeshikJanz/libraries/master/Bootstrap/baguetteBox.min.css">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->
<body>

<div class="main-layout inner_page">

    <!-- Channel Plugin Scripts -->
    <script>
        (function() {
            var w = window;
            if (w.ChannelIO) {
                return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
            }
            var ch = function() {
                ch.c(arguments);
            };
            ch.q = [];
            ch.c = function(args) {
                ch.q.push(args);
            };
            w.ChannelIO = ch;
            function l() {
                if (w.ChannelIOInitialized) {
                    return;
                }
                w.ChannelIOInitialized = true;
                var s = document.createElement('script');
                s.type = 'text/javascript';
                s.async = true;
                s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
                s.charset = 'UTF-8';
                var x = document.getElementsByTagName('script')[0];
                x.parentNode.insertBefore(s, x);
            }
            if (document.readyState === 'complete') {
                l();
            } else if (window.attachEvent) {
                window.attachEvent('onload', l);
            } else {
                window.addEventListener('DOMContentLoaded', l, false);
                window.addEventListener('load', l, false);
            }
        })();

        ChannelIO('boot', {
            "pluginKey": "875b5a88-7571-45b5-8dd9-a0d4507a2c64"
        });
    </script>
    <!-- End Channel Plugin -->
    <!-- loader  -->
    <div class="loader_bg">
        <div class="loader"><img src="/images/loading.gif" alt="#"/></div>
    </div>
    <!-- end loader -->
    <!-- top -->
    <!-- header -->
    <header class="header-area">
        <div class="left">
            <a href="/Javascript:void(0)"><i class="fa fa-search" aria-hidden="true"></i></a>
        </div>
        <div class="right">
            <a href="/Javascript:void(0)"><i class="fa fa-user" aria-hidden="true"></i></a>
        </div>
        <div class="container">
            <div class="row d_flex">
                <div class="col-sm-3 logo_sm">
                    <div class="logo">

                    </div>
                </div>
                <div class="col-lg-10 offset-lg-1 col-md-12 col-sm-9">
                    <div class="navbar-area">
                        <nav class="site-navbar">
                            <ul>
                                <li><a class="active" href="index">Home</a></li>
                                <li><a href="about.html">즐겨찾기</a></li>
                                <li><a href="action.html">내 주변 병원찾기</a></li>
                                <li><a href="EmerSearch2">민간 구급차검색</a></li>
                                <li><a href="EmerSearch">응급실 조건검색</a></li>
                            </ul>
                            <button class="nav-toggler">
                                <span></span>
                            </button>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- end header -->
    <div id="map" style="width:2000px;height:1000px;"></div>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bc592acc6021e9cae80168618a257b17"></script>
    <script>
        var container = document.getElementById('map');
        var options = {
            center: new kakao.maps.LatLng(37.549775360143265, 126.84233038945548),
            level: 3
        };

        var map = new kakao.maps.Map(container, options);


    </script>
    <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCwonY43KCkySXlJTXldb8KNPnFM05S00U&callback=myMap"></script>
</div>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };

    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

    // 지도를 클릭한 위치에 표출할 마커입니다
    var marker = new kakao.maps.Marker({
// 지도 중심좌표에 마커를 생성합니다
        position: map.getCenter()
    });
    // 지도에 마커를 표시합니다
    marker.setMap(map);

    // 지도에 클릭 이벤트를 등록합니다
    // 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
    kakao.maps.event.addListener(map, 'click', function(mouseEvent) {

// 클릭한 위도, 경도 정보를 가져옵니다
        var latlng = mouseEvent.latLng;

// 마커 위치를 클릭한 위치로 옮깁니다
        marker.setPosition(latlng);

        var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
        message += '경도는 ' + latlng.getLng() + ' 입니다';

        var resultDiv = document.getElementById('clickLatlng');
        resultDiv.innerHTML = message;

    });

    var positions = [
        {
            title: '분당서울대학교병원',
            latlng: new kakao.maps.LatLng(37.35202367706234, 127.12323410204951)
        },
        {
            title: '연세대학교의과대학강남세브란스병원',
            latlng: new kakao.maps.LatLng(37.49284034006731, 127.04626620014892)
        },
        {
            title: '삼성서울병원',
            latlng: new kakao.maps.LatLng(37.48829337247338, 127.08519406852608)
        },
        {
            title: '강동경희대학교의대병원',
            latlng: new kakao.maps.LatLng(37.55350552020035, 127.15764634684794)
        },
        {
            title: '성심의료재단강동성심병원',
            latlng: new kakao.maps.LatLng(37.536017727013366, 127.13538806538311)
        },
        {
            title: '한국보훈복지의료공단중앙보훈병원',
            latlng: new kakao.maps.LatLng(37.53041639877656, 127.14799537003964)
        },
        {
            title: '이화여자대학교의과대학부속서울병원',
            latlng: new kakao.maps.LatLng(37.55707416846491,126.83624879434741)
        },
        {
            title: '부민병원',
            latlng: new kakao.maps.LatLng( 37.55688632814946, 126.85088278792504)
        },
        {
            title: '에이치플러스양지병원',
            latlng: new kakao.maps.LatLng(37.48412642350955, 126.93257327912681)
        },
        {
            title: '건국대학교병원',
            latlng: new kakao.maps.LatLng(37.54062788571444, 127.07209129775578)
        }
    ];

    // 마커 이미지의 이미지 주소
    var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

    for (var i = 0; i < positions.length; i ++) {

        // 마커 이미지의 이미지 크기
        var imageSize = new kakao.maps.Size(24, 35);

        // 마커 이미지를 생성
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

        // 마커를 생성
        var marker = new kakao.maps.Marker({
            map: map, // 마커를 표시할 지도
            position: positions[i].latlng, // 마커를 표시할 위치
            title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시
            image : markerImage // 마커 이미지
        });
    }
</script>


<!--  footer -->
<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-6 col-sm-6">
                    <div class="hedingh3 text_align_left">
                        <h3>Medical Helper</h3>
                        <ul class="menu_footer">
                            <li><a href="about">about 연동</a></li>
                            <li><a href="javascript:void(0)">즐겨찾기</a></li>
                            <li><a href="javascript:void(0)">내 주변 병원찾기</a></li>
                            <li><a href="javascript:void(0)">민간 구급차 검색</a></li>
                            <li><a href="javascript:void(0)">응급실 조건검색</a></li>
                            <li><a href="javascript:void(0)">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="hedingh3 text_align_left">
                        <h3>About</h3>
                        <p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="hedingh3  text_align_left">
                        <h3>Contact  Us</h3>
                        <ul class="top_infomation">
                            <li><i class="fa fa-map-marker" aria-hidden="true"></i>
                                Making this the first true
                            </li>
                            <li><i class="fa fa-phone" aria-hidden="true"></i>
                                Call : +01 1234567890
                            </li>
                            <li><i class="fa fa-envelope" aria-hidden="true"></i>
                                <a href="Javascript:void(0)">Email : demo@gmail.com</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="hedingh3 text_align_left">
                        <h3>countrys</h3>
                        <div class="map">
                            <img src="/images/map.png" alt="#"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <p>© 2020 All Rights Reserved. Design by <a href="https://html.design/"> Free html Templates</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- end footer -->
</body>
</html>