<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 태그를 클릭할 때 해당 태그 정보를 서버에 전달하는 스크립트 -->
<script>
  // 태그를 클릭했을 때 해당 태그 정보를 서버에 전달하는 함수
  function getPostsByTag(tag) {
    // AJAX를 사용하여 서버에 요청을 보냅니다.
    var xhr = new XMLHttpRequest();
    xhr.open('GET', '서버URL/태그검색?tag=' + tag, true);
    xhr.onreadystatechange = function() {
      if (xhr.readyState === XMLHttpRequest.DONE) {
        if (xhr.status === 200) {
          // 서버로부터 받은 응답을 처리합니다.
          var posts = JSON.parse(xhr.responseText);
          // 받은 게시글 목록을 화면에 표시하는 함수를 호출합니다.
          displayPosts(posts);
        } else {
          console.error('서버 오류:', xhr.status);
        }
      }
    };
    xhr.send();
  }
</script>
<style type="text/css">
	body,html {
        margin: 0;
        padding: 0;
        font-family: "Pretendard-Regular", sans-serif; /* 전체 글꼴 변경 */
      }	
      .content{
      margin:0 16.6%;
      }
	.pageContainer {
		width: 100%;
	}
	.freeContainer {
		width : 1280px;
		margin : 0 auto;
 	}
  	.listContainer{
 		width :1024px;
 		margin : 0 auto;
 		border-bottom: 2px solid #ddd;
  	}
  	
  	.searchContainer {

		margin-bottom: 30px;
		  display: grid;
  grid-auto-flow: column;
  grid-template-columns: 1fr;
  align-items: center;
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
    	width: 1000px;
    	margin: 0 auto;
    	border-collapse: collapse;
    	margin-top: 30px;
  	}
	.board th, .board td {
   		padding: 10px;
    	text-align: center;
    	color: black;
  	}
  	.board th {
    	background-color: #ffffff;
    	border-bottom: 2px solid #ddd;
    	font-weight: bold;
  	} 
  	.footer {
  		height: 200px;
  	}
  	.searchBox{
    list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
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
		text-align: center;
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
</head>
<body>
    <jsp:include page="../main/header.jsp"/>
    <br><br><br>
    <div class="content">
<div class="pageContainer">
    <div class="freeContainer">
        <h1>&nbsp;자유게시판</h1>
        <div class="searchContainer">
            <div  class="searchBox" >
                <input type="text" placeholder="  검색..." />
            	<button id="searchBtn">검색</button>
            </div>
        </div>
    </div>

<div class = "listContainer">
<table class="board">
  <thead>
    <tr>
  	  <th>태그
  	  <div style = "display:inline-block;">
  	  		<select onchange="getPostsByTag(this.value)">
				<option value="daily">#일상</option>
				<option value="dogCon">#전국갱얼쥐자랑</option>
				<option value="infoShare">#정보/공유</option>
				<option value="Question">#질문</option>
			</select>
		</div></th>
  	  	
      <th>제목</th>
      <th>작성자</th>
      <th>작성일</th>
      <th>조회수</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="#" onclick="getPostsByTag('dogCon')">#전국갱얼쥐자랑</a></td>
      <td><a href="post1.html">우리집 갱얼쥐 보세요 짱 귀여움;</a></td>
      <td>초코맘</td>
      <td>2024-03-25</td>
      <td>109</td>
    </tr>
    <tr>
      <td><a href="#" onclick="getPostsByTag('dogCon')">#전국갱얼쥐자랑</a></td>
      <td><a id="title" href="post2.html">우리집 갱얼쥐 보세요 짱 귀여움;</a></td>
      <td>초코맘</td>
      <td>2024-03-24</td>
      <td>486</td>
    </tr>
    <tr>
      <td><a href="#" onclick="getPostsByTag('dogCon')">#전국갱얼쥐자랑</a></td>
      <td><a href="post2.html">우리집 갱얼쥐 보세요 짱 귀여움;</a></td>
      <td>초코맘</td>
      <td>2024-03-24</td>
      <td>1109</td>
    </tr>
    <tr>
      <td><a href="#" onclick="getPostsByTag('dogCon')">#전국갱얼쥐자랑</a></td>
      <td><a href="post2.html">우리집 갱얼쥐 보세요 짱 귀여움;</a></td>
      <td>초코맘</td>
      <td>2024-03-24</td>
      <td>19</td>
    </tr>
    <tr>
      <td><a href="#" onclick="getPostsByTag('dogCon')">#전국갱얼쥐자랑</a></td>
      <td><a href="post2.html">우리집 갱얼쥐 보세요 짱 귀여움;</a></td>
      <td>초코맘</td>
      <td>2024-03-24</td>
      <td>9</td>
    </tr>
    <tr>
      <td><a href="#" onclick="getPostsByTag('dogCon')">#전국갱얼쥐자랑</a></td>
      <td><a href="post2.html">우리집 갱얼쥐 보세요 짱 귀여움;</a></td>
      <td>초코맘</td>
      <td>2024-03-24</td>
      <td>5</td>
    </tr>
     <tr>
      <td><a href="#" onclick="getPostsByTag('dogCon')">#전국갱얼쥐자랑</a></td>
      <td><a href="post2.html">우리집 갱얼쥐 보세요 짱 귀여움;</a></td>
      <td>초코맘</td>
      <td>2024-03-24</td>
      <td>10</td>
    </tr>
    <tr>
      <td><a href="#" onclick="getPostsByTag('infoShare')">#정보/공유</a></td>
      <td><a href="post2.html">이번에 OO사료 환불 아직 못받으신 분 여기서 환불 받으세요</a></td>
      <td>해바라기씨도둑</td>
      <td>2024-03-24</td>
      <td>1094</td>
    </tr>
    <tr>
      <td><a href="#" onclick="getPostsByTag('infoShare')">#정보/공유</a></td>
      <td><a href="post2.html">보호소에 올라온 리트리버 분실 아니고 유기같아요ㅠ</a></td>
      <td>마포구보안댕</td>
      <td>2024-03-24</td>
      <td>1011</td>
    </tr>
    <tr>
     <td><a href="#" onclick="getPostsByTag('Question')">#질문</a></td>
      <td><a href="post2.html">혹시 간식 업체도 추천해도 되나요?</a></td>
      <td>하울의음쥑이는성</td>
      <td>2024-03-24</td>
      <td>412</td>
    </tr>
    <tr>
      <td><a href="#" onclick="getPostsByTag('daily')">#일상</a></td>
      <td><a href="post2.html">이번에 댕댕런에서 도움주셨던 견주분 찾습니다 ㅠㅠ</a></td>
      <td>은혜갚은까치</td>
      <td>2024-03-24</td>
      <td>369</td>
    </tr>
    <tr>
      <td><a href="#" onclick="getPostsByTag('Question')">#질문</a></td>
      <td><a href="post2.html">이 강아지가 입은 옷 사이즈가 몇인지 아시는분?</a></td>
      <td>금천구물주먹</td>
      <td>2024-03-24</td>
      <td>374</td>
    </tr>
  </tbody>
</table>
</div>    
    <!-- 페이지네이션 -->
<div class="pagination">
  <a href="#">&laquo;</a>
  <a href="#">1</a>
  <a href="#">2</a>
  <a href="#">3</a>
  <a href="#">4</a>
  <a href="#">5</a>
  <a href="#">6</a>
  <a href="#">7</a>
  <a href="#">8</a>
  <a href="#">9</a>
  <a href="#">10</a>
  <a href="#">&raquo;</a>
  <button class="yellowBtn" id="writeButton">글쓰기</button>
</div>
<script>
  // 글쓰기 버튼에 대한 클릭 이벤트 핸들러
  document.getElementById('writeButton').addEventListener('click', function() {
    // 글쓰기 페이지 URL로 이동
    window.location.href = 'http://localhost:8080/Test/freeBoard/freeWriteForm.jsp';
  });
</script>
<div class="footer"></div>
</div>
</div>
</body>
</html>