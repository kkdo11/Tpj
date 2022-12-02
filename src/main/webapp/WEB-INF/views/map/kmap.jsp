<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCUTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>웹페이지 제목</title>
</head>
<body>
<div id="map" style="width:100%;height:350px;"></div>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };

    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

    // 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다
    var positions = [
        {
            content: '<div>의료법인 혜인의료재단 한국병원</div>',
            latlng: new kakao.maps.LatLng(33.500185921027, 126.51698873048466)
        },
        {
            content: '<div>한마음병원</div>',
            latlng: new kakao.maps.LatLng(33.4962612399279, 126.54622454609037)
        },
        {
            content: '<div>제주대학교병원</div>',
            latlng: new kakao.maps.LatLng(33.46727330825531, 126.54525733713078)
        },
        {
            content: '<div>제주한라병원</div>',
            latlng: new kakao.maps.LatLng(33.489946745300735, 126.48507635686154)
        },
        {
            content: '<div>의료법인중앙의료재단중앙병원</div>',
            latlng: new kakao.maps.LatLng( 33.492346148279836, 126.47058708143306)
        }
    ];

    for (var i = 0; i < positions.length; i ++) {
        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            map: map, // 마커를 표시할 지도
            position: positions[i].latlng // 마커의 위치
        });

        // 마커에 표시할 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: positions[i].content // 인포윈도우에 표시할 내용
        });

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
    }

    // 인포윈도우를 표시하는 클로저를 만드는 함수입니다
    function makeOverListener(map, marker, infowindow) {
        return function() {
            infowindow.open(map, marker);
        };
    }

    // 인포윈도우를 닫는 클로저를 만드는 함수입니다
    function makeOutListener(infowindow) {
        return function() {
            infowindow.close();
        };
    }

    /* 아래와 같이도 할 수 있습니다 */
    /*
    for (var i = 0; i < positions.length; i ++) {
        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            map: map, // 마커를 표시할 지도
            position: positions[i].latlng // 마커의 위치
        });

        // 마커에 표시할 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: positions[i].content // 인포윈도우에 표시할 내용
        });

        // 마커에 이벤트를 등록하는 함수 만들고 즉시 호출하여 클로저를 만듭니다
        // 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        (function(marker, infowindow) {
            // 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                infowindow.open(map, marker);
            });

            // 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });
        })(marker, infowindow);
    }
    */
</script>


</body>
</html>