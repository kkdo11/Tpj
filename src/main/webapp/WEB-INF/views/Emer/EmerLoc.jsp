<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCtype html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <title>병원 위치</title>
    <script src="/js/jquery-3.6.1.min.js"></script>

    <script>
        window.onload=em;
        function em(){

            $.ajax({

                url: "/Emer/getEmerLoc",
                type :"get",
                dataType:"JSON",
                data:{},
                success:function(response) {


                    for (let i = 0; i<response.length; i++) {
                        let dn = response[i]["dutyName"]; //item.dutyName; //뱡워이름
                        let lat = response[i]["latitude"]; //위도
                        let lon = response[i]["longitude"]; //경도



                        // console.log(positions)


                        $("#loc").append("<div><b>병원이름 : "+dn+"</b></div>");
                        $("#loc").append("<div><b>위도 : "+lat+"</b></div>")
                        $("#loc").append("<div><b>경도 : "+lon+"</b></div>")
                        $("#loc").append("<br>")

                    }
        //             for (let i = 0; i<response.length; i++) {
        //             positions.push(
        //                 {
        //                     lat:response.lat,
        //                     lon:response.lon
        //                 }
        //             )}
        //
        //
        //
        //
        //         }
        //     })
        // }

    </script>
</head>
<body>
<div style="text-align: center">
    <br><br><br>
    <label>병원 위치</label>
    <br>
    <br>
    <br>
    <br>
    <span id="loc"></span>





</div>




</body>
</html>