<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String path=request.getContextPath();
	String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href=<%=basepath%>>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	$("#yexu").click(function () {
		$.post("tojson",function (data){
			console.log(data);
			$.each(data,function(i,MYwife){
				$("<tr><td>"+"名字"+MYwife.i+"</td><td>"+"日哦"+MYwife.mane+"</td></tr>").appendTo("#tt");
			})
		})
	})
})
</script>
</head>
<body>
	<button id="yexu">其实不想走</button>
	<table id="tt"></table>
</body>
</html>