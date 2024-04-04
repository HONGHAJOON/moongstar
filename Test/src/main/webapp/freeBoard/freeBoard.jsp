<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">	
		body,html {
        margin: 0;
        padding: 0;
        font-family: "Pretendard-Regular", sans-serif; /* 전체 글꼴 변경 */
      }
	.pageContainer {
		width: 100%;
	}
	.freeContainer {
		width : 1280px;
		margin: 0 auto;
 	}
 	#freeCategory{
 		width :1024px;
 		margin : 0 auto;	
  	}
  	.listContainer{
 		width :1024px;
 		margin: 0 auto;
 		border-bottom: 2px solid #ddd;
  	}
  	
  	.searchContainer {
    	float: right;
    	display: inline-block;
		align-item: center;
		margin-bottom: 30px;
   }
     
    .searchBox input[type="text"] {
       background-color: #F5F5F5;
       width: 330px;
       height: 30px;
       padding: 3px;
       box-shadow: inset 1px 3px 2px rgba(0, 0, 0, 0.1);
       border: none;
       border-top-left-radius:12px;
       border-bottom-left-radius:12px;
       
   }
      #searchBtn{
         background-color: #2F65DD;
         float:right;
         color: #ffffff;
         width: 76px;
         height: 36px;
		 padding: 3px;
         border-width:0;
         border-top-right-radius:12px;
         border-bottom-right-radius:12px;
          box-shadow: inset 1px 3px 2px rgba(0, 0, 0, 0.1);
      }

	.board {
    	width: 1024px;
    	margin: 0 auto;
    	border-collapse: collapse;
    	margin-top: 30px;
  	}
	.board th, .board td {
		position: relative;
   		padding: 10px;
    	text-align: center;
    	color: black;
  	}
  	.board th {
    	background-color: #ffffff;
    	border-bottom: 2px solid #ddd;
    	font-weight: bold;
  	} 
  	
  	.like-icon {
        position: absolute;
  		left: 70%;
  		transform: translateX(-50%);
  		top: 50%;
  		transform: translateY(-50%);
        width: 20px;
        height: 20px;
        background-image: url('../image/하트(핑).png'); /* 좋아요 아이콘 이미지 경로 */
        background-size: cover;
        margin-left: 5px;
    }
  	
  	.footer {
  		height: 200px;
  	}
</style>
<style>
	.pagination {
    	margin-top: 20px;
    	text-align: center;
  	}
	.pagination a {
    	display: inline-block;
    	padding: 5px 10px;
    	border: 1px solid #ccc;
    	color: black;
    	text-decoration: none;    	
  	}
  	.pagination a:hover {
    	background-color: #f2f2f2;
  	}
  	a:link{
  	text-decoration: none;
    	color: #2F65DD;
  	}
	select{
		display: flex;
		width: 19px;
	}	
	.yellowBtn {
		font-weight: bold;
		margin-left: 8px;
		background-color: #FED74B;
  		width: 65px;
  		padding: 5px;
  		border-radius: 17px;
  		border : 0;
  		box-shadow: 1px 4px 0px rgba(0, 0, 0, 0.1);
	}
</style>
<script src="https://code.jquery.com/jquery-Latest.min.js"></script>
</head>
<body>
     <%@ include file="../main/header.jsp" %>
<br><br>
<div class="pageContainer">
	<div class="freeContainer">
    <div id="freeCategory">
        <h2 style="margin-bottom: 5px;">자유게시판</h2>
		<br><br>
		<div class="searchContainer">
            <span class="searchBox">
                <input type="text" placeholder="  검색..." />
            	<button id="searchBtn">검색</button>
            </span>
        </div>
	</div>
	</div>
<div class = "listContainer">
<table class = "board">
	<tr>
		<th>태그
  	  <div style = "display:inline-block;">
  	  		<select class="category" id="category" name="category" size="1">
  	  			<option value="">#전체보기</option>
				<option value="daily">#일상</option>
				<option value="dogCon">#전국갱얼쥐자랑</option>
				<option value="infoShare">#정보/공유</option>
				<option value="Question">#질문</option>
			</select>
		</div></th><th>제목</th><th>작성자</th><th>날짜</th><th>조회수</th><th>좋아요</th>
		<c:forEach items = "${freeBoard }" var = "board">
			<tr>
				<td><a href = "freeboard?freeTag=${board.freeTag }">${board.freeTag }</a></td>
				<td><a href = "boarddetail?freeNum=${board.freeNum }">${board.freeSub }</a></td>
				<td>${board.freeNick }</td>
				<td>${board.freeWriteDate }</td>
				<td>${board.freeView }</td>
				<td>${board.freeLike }<span class="like-icon"></span></td>
			</tr>
		</c:forEach>
	</tr>
</table>
</div>    
<br>
    <!-- 페이지네이션 -->
<div class="pagination">
  	<a>&lt;</a>
	<c:forEach begin = "${pageInfo.startPage }" end = "${pageInfo.endPage }" var = "i">
		<c:choose>
			<c:when test = "test=${i==psgeInfo.curPage }">
				<a href = "freeboard?page=${i }" class = "select">${i }</a>
			</c:when>
		<c:otherwise>
			<a href = "boardlist?page=${i }" class = "select">${i }</a>
		</c:otherwise>
		</c:choose>
	</c:forEach>
	<a>&gt;</a>
  <button class="yellowBtn" id="writeButton">글쓰기</button>
</div>

 </div>
 <script>
 $(function(){
		$('#category').val('${freeTag}');
		$('#category').change(function(){
			var freeTag=$(this).val()
			document.location.href="http://localhost:8080/MoongStar/freeBoard/freeboard?freeTag="+freeTag;
		})
	})
 
//검색 버튼 클릭 시 검색 기능 구현
document.getElementById("searchBtn").addEventListener("click", function() {
     var searchTerm = document.querySelector(".searchBox input[type='text']").value;
     
     // AJAX를 이용하여 서버에 검색어를 전달하고 결과를 받아옴
     var xhr = new XMLHttpRequest();
     xhr.open("GET", "search?q=" + searchTerm, true);
     xhr.onreadystatechange = function() {
         if (xhr.readyState === XMLHttpRequest.DONE) {
             if (xhr.status === 200) {
                 var response = xhr.responseText;
                 // 서버에서 받아온 검색 결과를 처리하여 화면에 표시
                 displaySearchResults(response);
             } else {
                 console.error("서버 오류:", xhr.status);
             }
         }
     };
     xhr.send();
 });

 // 검색 결과를 처리하여 화면에 표시하는 함수
 function displaySearchResults(results) {
     // 결과를 받아와서 화면에 표시하는 로직을 작성
     console.log("검색 결과:", results);
 }
 /*위 코드에서 search?q= 부분은 검색어를 서버에 전달하는 부분으로, 
실제 서버의 검색 기능을 호출하는 API 엔드포인트로 변경해야 합니다. 또한, 
displaySearchResults 함수에서는 검색 결과를 받아와서 화면에 표시하는 로직을 작성해야 합니다.*/

</script>
<script>
  // 글쓰기 버튼에 대한 클릭 이벤트 핸들러
  document.getElementById('writeButton').addEventListener('click', function() {
    // 글쓰기 페이지 URL로 이동
    window.location.href = 'http://localhost:8080/MoongStar/freeBoard/freewrite';
  });
</script>
<div class="footer"></div>
</body>
</html>