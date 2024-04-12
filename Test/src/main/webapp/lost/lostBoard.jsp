<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멍뭉별 찾습니다 게시판</title>
<style>
@font-face {
	font-family: "JalnanGothic";
	src:
		url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_231029@1.1/JalnanGothic.woff")
		format("woff");
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'Pretendard-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff')
		format('woff');
	font-weight: 400;
	font-style: normal;
}

body, html {
	margin: 0;
	padding: 0;
	font-family: "Pretendard-Regular", sans-serif; /* 전체 글꼴 변경 */
}

.text {
	font-size: 34px;
	font-family: "JalnanGothic";
	margin: 10px 0;
	float: left;
}

.temp_container {
	margin: 40px auto;
	width: 1280px;
	height: 100px;
}

.category {
	float: right;
	margin-top: 50px;
	margin-bottom: 5px;
	height: 30px;
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 6px;
	padding-bottom: 6px;
	background-color: #F6F6F6;
	border-radius: 5px;
	box-shadow: inset 1px 1px 0px rgba(0, 0, 0, 0.2);
	border: none;
	text-align: center;
	/*         font-family: "JalnanGothic"; */
	line-height: 30px;
}

.category option {
	line-height: 15px;
}

.searchInput {
	padding: 8px 10px 8px 10px;
	background-color: #F6F6F6;
	border-radius: 5px;
	box-shadow: inset 1px 1px 0px rgba(0, 0, 0, 0.2);
	border: none;
	/* 	font-family: "JalnanGothic"; */
}

.searchInput:focus {
	outline: none;
}

.searchBtn {
	padding: 6px;
	background-color: /* #0155B7; */ #053cc8;
	border-radius: 0 5px 5px 0;
	color: white;
	border: none;
	/* 	font-family: "JalnanGothic"; */
	cursor: pointer;
	font-size: 16px;
	font-weight: 700;
}

.writeBtn {
	padding: 6px;
	padding-left: 10px;
	padding-right: 10px;
	background-color: #fdc600;
	border-radius: 5px;
	border: none;
/* 	font-family: "JalnanGothic"; */
	cursor: pointer;
	margin-left: 10px;
	font-size: 16px;
	font-weight: 700;
}

.album_container {
	margin: 50px auto;
	width: 1332px;
	padding: 0px;
	border-color: black;
	overflow: hidden;
}

table {
	width: 100%;
}

.album {
	margin: 17.5px 23.8px;
	width: 258px;
	height: 313px;
	padding: 20px 10px 30px 10px;
	display: inline-block;
	border: 2px solid black;
	border-color: darkgrey;
	border-radius: 30px;
}

.album:hover {
	transform: scale(1.005);
}

.column2 {
	margin-left: 9.090%;
	margin-right: 9.090%;
	width: 300px;
	padding: 10px;
	display: inline-block;
	border: 2px solid black;
	border-color: darkgrey;
	border-radius: 10px;
}

.column3 {
	padding: 10px;
	width: 300px;
	float: right;
	display: inline-block;
	border: 2px solid black;
	border-color: darkgrey;
	border-radius: 10px;
}

.lostImg {
	width: 100%;
	height: 258px;
	overflow: hidden;
	border-radius: 20px;
}

.photo {
	/* width: 100%; height: 250px; */
	display: inline-block;
	overflow: hidden;
}

.boardContainer {
	padding-left: 5px;
	margin-top: 7px;
	margin-bottom: 10px;
}

.dogName {
	height: 45px;
	font-size: 22px;
	overflow: hidden;
	font-weight: bold;
	margin-left: 3px;
}

.address {
	display: inline-block;
	height: 19px;
	width: 154px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	margin-top: 3px;
	margin-left: 7px;
}

.state {
	font-size: 18px;
	float: right;
	margin-right: 7px;
		font-family: "JalnanGothic";
}

.pageContainer {
	display: flex;
	justify-content: center;
	align-items: center;
}

.pageDiv {
	margin-top: 0px;
	margin-bottom: 100px;
	font-family: "JalnanGothic";
}

.pageSelect {
	margin: 10px;
	text-decoration: none;
	font-weight: bold;
	color: gold;
}

.pageSelect:hover {
	color: gold;
}

.morePage {
	margin: 10px;
	text-decoration: none;
	color: black;
}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
$(function(){
	$('#category').val('${lostCgory}');
	$('#category').change(function(){
		var lostCgory=$(this).val()
		document.location.href="http://localhost:8080/MoongStar/lost/lostBoard?lostCgory="+lostCgory;
	})
	
	$(".photo").load(function(e) {
		var imageBox = document.querySelector(".lostImg");
		const widthDiff = (this.clientWidth - imageBox.offsetWidth) / 2;
    	const heightDiff = (this.clientHeight - imageBox.offsetHeight) / 2;
    	
    	console.log(widthDiff)
    	this.style.transform = "translate("+ -widthDiff + "px,"+ -heightDiff +"px)";
	})
})

let imageBlob = null;

const handleImgInput = (e) => {
  const config = {
    file: e.target.files[0],
    maxSize: 200,
  };
  resizeImage(config)
    .then((resizedImage) => {   
    	resizedImage.toBlob( blob=> {
    	      const url = window.URL.createObjectURL(blob);
    	      const img = document.createElement("img");
    	      img.setAttribute("src", url);
    	      img.className = "profile-img";
    	      img.style.display = "block";
    	      img.onload = () => {
    	        const widthDiff = (img.clientWidth - imgTag.offsetWidth) / 2;
    	        const heightDiff = (img.clientHeight - imgTag.offsetHeight) / 2;

    	        img.style.transform = "translate("+ -widthDiff + "px,"+ -heightDiff +"px)";
    	      };    	      
    	      
    	      imgTag.innerHTML = "";
    	      imgTag.appendChild(img);
    	      imageBlob = blob;
    	      console.log(imageBlob)
    	}, 'image/webp')
    })
    .catch((err) => {
      console.log(err);
    });
};
</script>
</head>
<body>
	<c:set var="path" value="${pageContext.request.contextPath}" />
	<jsp:include page="/main/header.jsp" />
	<div class="temp_container">
		<div class="text">찾습니다</div>
		<div class="right_container" style="float: right;">
			<select class="category" id="category" name="category" size="1">
				<option value="">찾습니다 / 찾았어요</option>
				<option value="finding">찾습니다</option>
				<option value="finded">찾았어요</option>
			</select>
			<div>
				<form action="" style="display: inline-block;">
					<input type="text" class="searchInput" id="comment"
						name="searchText" placeholder="검색" />
					<button class="searchBtn" type="submit" class="Btn">검색</button>

				</form>
				<a href="lostWrite"><button class="writeBtn" type="submit"
						class="Btn">글쓰기</button></a>
			</div>
		</div>
	</div>

	<div class="album_container">
		<c:forEach items="${losts}" var="lost" varStatus="loop">
			<div id="${lost.lostNum}" class="album">

				<div class="lostImg">
					<a href="lostDetail?lostNum=${lost.lostNum}"> <img
						class="photo" src="${path}/imageView?num=${lost.lostPhoto}">
					</a>
				</div>

				<div class="boardContainer">
					<a class="dogName" href="lostDetail?lostNum=${lost.lostNum}">${lost.lostName}</a>
					<c:choose>
						<c:when test="${lost.lostCgory eq 'finded'}">
							<a href="lostDetail?lostNum=${lost.lostNum}" class="state">주인만남</a>
							<br>
						</c:when>
						<c:otherwise>
							<a href="lostDetail?lostNum=${lost.lostNum}" class="state"> </a>
							<br>
						</c:otherwise>
					</c:choose>
					<a class="address" href="lostDetail?lostNum=${lost.lostNum}">${lost.lostAddress}</a>
				</div>
			</div>
		</c:forEach>
	</div>
	<div class="pageContainer">
		<div class="pageDiv" id="">
			<c:choose>
				<c:when test="${pageInfo.curPage!=1}">
					<a href="lostBoard?page=${pageInfo.curPage-1 }">&lt;</a>
				</c:when>
			</c:choose>

			<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}"
				var="i">
				<c:choose>
					<c:when test="${i==pageInfo.curPage}">
						<a href="lostBoard?page=${i}" class="pageSelect">${i}</a>
					</c:when>
					<c:otherwise>
						<a href="lostBoard?page=${i}" class="morePage">${i}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>

			<c:choose>
				<c:when test="${pageInfo.curPage==pageInfo.allPage}">
					<a>&gt;</a>
				</c:when>
				<c:otherwise>
					<a href="lostBoard?page=${pageInfo.curPage+1}">&gt;</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

</body>
</html>