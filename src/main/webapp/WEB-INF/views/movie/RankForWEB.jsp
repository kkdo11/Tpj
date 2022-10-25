<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="kopo.poly.util.CmmUtil"%>
<% String res = CmmUtil.nvl((String) request.getAttribute("res"),"0"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>웹페이지 제목</title>
</head>
    <meta charset="UTF-8">
    <title>CGV</title>
<body>
CGV 영화 홈페이지에서 <%=res%>개의 영화순위 정보가 수집되었습니다

</body>
</html>     