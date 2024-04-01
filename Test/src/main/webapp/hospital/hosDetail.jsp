<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-Latest.min.js"></script>
<script>

</script>
<style>
.container{
transform: scale(0.9,0.9);
position:relative;
width:400px;
right:280px;
float:right;

}
.backWalkDetail {
	width: 750px;
	height: 750px;
	background-color: #F5F5F5;
	border-radius: 10%;
}

.frontHosDetail {
	position: relative;
	top: 40px;
	width: 700px;
	height: 660px;
	background-color: #F5F5F5;
	margin: 0 auto;
	border-radius: 10%;
	border-right: 3px solid #D9D9D9;
}

.HosDetail {
	position: relative;
	top: 15px;
	width: 650px;
	height: 630px;
	background-color: white;
	border-radius: 5%;
	margin: 0 auto;
}

#hosContent {
	width: 610px;
	height: 200px;
	margin: 0 auto;
}

#hosPhoto {
	width: 200px;
	height: 200px;
	background-color: lightgray;
	position: relative;
	float: right;
	border-radius: 10%;
}

#hosTopEmpty, #hosBottomEmpty {
	height: 30px;
	margin: 0;
}

#hosMidEmpty {
	height: 80px;
	margin: 0;
}

#hosComment {
	background-color: #EFEFEF;
	width: 600px;
	height: 250px;
	margin: 0 auto;
	padding-top: 3px; border-radius : 5%;
	box-shadow: 0 2px 3px gray;
	blur-radius: 10%;
	top: 30%;
	border-radius: 5%;
}

h3 {
	margin-left: 25px;
}

#hosLike {
	height: 40px;
	width: 220px;
	float: right;
	font-size:25px;
	text-align:center;
}


#hosName {
	margin: 0;
	float: left;
}

#hosType {
	height: 30px;
	float: left;
	margin-top: 8px;
	margin-left: 2px;
	color: #545454;
}

.hosSubject {
	width: 400px;
	height: 35px;
	float: left;
	border-bottom: 2px solid gray;
}

.hosAddress {
	margin-top: 2px; float : left;
	width: 400px;
	float: left;
}

#exitBtn {
	position: relative;
	float: right;
	right: 50px; margin-top : 10px;
	width: 20px;
	height: 20px;
	border-radius: 50%;
	background-color: #C91C1C;
	box-shadow: 1px 1px 3px #ECECEC inset;
	margin-top: 10px;
}

a {
display:inline-block;
margin-left: 5px;
margin-top:2px;
	text-align: center;
	font-weight: bold;
	text-decoration: none;
	color: black;
	text-align: center;
}

</style>
</head>
<body>
<div class="container">
	<div class="backHosDetail">
		<div id="exitBtn">
			<a href="#">X</a>
		</div>
		<div class="frontHosDetail">
			<div class="hosDetail">
				<div id="hosTopEmpty"></div>
				<div id="hosContent">
					<div class="hosSubject">
						<h1 id="hosName">카카오오름</h1>
						<h2 id="hosType">기업, 빌딩</h2>
					</div>
					<div id="hosPhoto"></div>
					<div class="hosAddress">
						<div id="hosAddress3">
							<img src="<%=request.getContextPath()%>/image/place.png"
								width="15px"> 카카오시 카카오구 카카오동 카카오오름
						</div>
					</div>
				</div>
				<div id="hosLike">
					<b>Like</b><br>
					<img src="<%=request.getContextPath()%>/image/none.png" style="width:45px;">
				</div>
			<div class="comment">
			<%@ include file="mapComment.jsp" %>
			</div>
		</div>
	</div>
</div>
</div>
</body>
<script>
$('#exitBtn').on("click",function(){
$.ajax({
	url:'walkBoard.jsp',
	success:function(response){
		$('#leftDiv').empty();
		$('#leftDiv').append(`<img id="helpMessage" src="./image/help.png"/>`);
	}
	
})
})
</script>
</html>