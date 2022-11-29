<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCUTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>

<script>
    for (var i = 0; i < data.bicycleList.length; i++) {
        console.log(data.bicycleList[i]);
        var indexStart = data.bicycleList[i].stationName.indexOf(data.bicycleList[i].stationName.split(" ")[1]);
        var statName = data.bicycleList[i].stationName.substring(indexStart);
        positions.push(
            {
                parkingBikeTotCnt: data.bicycleList[i].parkingBikeTotCnt,
                title: statName,
                latlng: new kakao.maps.LatLng(data.bicycleList[i].stationLatitude, data.bicycleList[i].stationLongitude),
                lat: data.bicycleList[i].stationLatitude,
                lon: data.bicycleList[i].stationLongitude
            }
        )

        /** sort 써서 거리 순으로 정렬 후 보여주자 */
        html += '<li data-lng="' + data.bicycleList[i].stationLongitude +
            '" data-lat="' + data.bicycleList[i].stationLatitude + '" data-no="31">' +
            '<div class="num">' + i + '</div>' +
            '<div class="store_txt">' +
            '<p class="name">' +
            '<span>' + statName + '<strong class="distance">' + data.bicycleList[i].distance + 'm</strong></span>' +
            '</p>' +
            '</div>' +
            '</li>';
    }

    // 마커 이미지의 이미지 주소입니다
    var imageSrc = "../images/location.png";
    var imageSize = new kakao.maps.Size(35, 35);

    // 커스텀 오버레이에 표시할 컨텐츠 입니다
    // 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
    // 별도의 이벤트 메소드를 제공하지 않습니다
    /** 마커 생성!!!!! */
    for (var i = 0; i < positions.length; i++) {
        var overTitle = positions[i].title;
// 마커 이미지를 생성합니다
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

// 마커를 생성합니다
        markers[i] = new kakao.maps.Marker({
            map: map, // 마커를 표시할 지도
            position: positions[i].latlng, // 마커를 표시할 위치
            title: positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
            image: markerImage // 마커 이미지
        });



//오버레이 설정 부분
        var overlayContent_temp = "";
        overlayContent_temp = overlayContent;
        overlayContent_temp = overlayContent_temp.replace(/<#StoreName#>/g, positions[i].title);
        overlayContent_temp = overlayContent_temp.replace(/<#StoreAddress#>/g, positions[i].title);
        overlayContent_temp = overlayContent_temp.replace(/<#StoreSort#>/g, "<img src='" + "/images/store/store_icon_" + positions[i].sort + ".png' width='80' >");
        overlayContent_temp = overlayContent_temp.replace(/<#StoreLAT#>/g, positions[i].lat);
        overlayContent_temp = overlayContent_temp.replace(/<#StoreLNG#>/g, positions[i].lon);
        overlayContent_temp = overlayContent_temp.replace(/<#StoreNo#>/g, i);
        overlayContent_temp = overlayContent_temp.replace(/<#BikeCnt#>/g, positions[i].parkingBikeTotCnt);

        overlay[i] = new daum.maps.CustomOverlay({
            content: overlayContent_temp,
            map: map
        });

        daum.maps.event.addListener(markers[i], "click", function () {
// 일단 오버레이를 모두 닫고
            resetOverlay();
//센터로 이동
            map.setCenter(markers[this.index].getPosition());
// 해당 인포윈도를 열어준다.
//infowindow[this.index].open(map, markers[this.index]);
//해당 오버레이를 열어준다
            overlay[this.index].setMap(map);
            overlay[this.index].setPosition(markers[this.index].getPosition());
        });

    }

</script>
</body>
</html>







