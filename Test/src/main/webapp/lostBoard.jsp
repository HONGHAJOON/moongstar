<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	@font-face {
        font-family: "JalnanGothic";
        src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_231029@1.1/JalnanGothic.woff")
          format("woff");
        font-weight: normal;
        font-style: normal;
      }
    @font-face {
        font-family: 'Pretendard-Regular';
        src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
        font-weight: 400;
        font-style: normal;
    }
    body,
    html {
        margin: 0;
        width: 1920px;
        padding: 0;
        font-family: "Pretendard-Regular", sans-serif; /* 전체 글꼴 변경 */
      }
	.text {
        font-size: 20px;
        font-family: "JalnanGothic";
        margin: 10px 0;
        float: left;
      }
      
    .category{
    	float: right; margin-top: 50px;
    	margin-bottom: 5px;
    	height: 30px;
		padding-left: 10px; padding-right: 10px;	    
    	background-color: #F6F6F6;
    	border-radius: 5px;
  		box-shadow: inset 1px 1px 0px rgba(0, 0, 0, 0.2);
  		border: none;
  		text-align: center;
        font-family: "JalnanGothic";
    }
    .searchInput{
		padding-bottom: 8px; padding-top: 8px;
    	background-color: #F6F6F6;
    	border-radius: 5px;
  		box-shadow: inset 1px 1px 0px rgba(0, 0, 0, 0.2);
  		border: none;
        font-family: "JalnanGothic";
    }
    .searchBtn{
		padding-bottom: 8px; padding-top: 8px;    
    	background-color: #0155B7;
    	border-radius: 5px;
    	color: white;
    	border: none;
        font-family: "JalnanGothic";
    }
    .writeBtn{
		padding-bottom: 8px; padding-top: 8px;
		padding-left: 10px; padding-right: 10px;	    
    	background-color: #F6F6F6;
    	border-radius: 5px;
    	border: none;
        font-family: "JalnanGothic";

    }
    .album{
    	margin-left: 252.712px; margin-right: 252.712px;
    	margin-top: 50px;
      	border-color: black;
    }
      
    .row{
      	margin-bottom: 100px;
    }
    .column1{
      	float : left;
      	padding: 10px;
      	display: inline-block;
      	border: 2px solid black;
      	border-color: darkgrey;
      	border-radius: 10px;
    }
    .column2{
      	padding: 10px;
      	margin-left: 115px;
      	display: inline-block;
       	border: 2px solid black;
       	border-color: darkgrey;
       	border-radius: 10px;
    }
    .column3{
      	padding: 10px;
      	float: right;
       	display: inline-block;
      	border: 2px solid black;
      	border-color: darkgrey;
      	border-radius: 10px; 	
    }
    .tempImg{
    	width: 240px; height: 240px;
    	border-radius: 10px;
    }
    .boardContainer{
    	padding-left: 5px;
    	margin-bottom: 10px;
    }
    .dogName{
    	font-size: 22px;
    }
    .address{
    }
    .state{
    	font-size: 28px;
    	float : right;
    	margin-top: 13px;
    }
    .pageDiv{
    	width: 500px;
    	margin: 0 auto;
        font-family: "JalnanGothic";

    }
    .select{
    	margin: 0 auto;
    }

</style>
</head>
<body>
<%@ include file="/header.jsp" %>
<div class="temp_container" style="margin-top: 40px; margin-left: 252.712px; margin-right: 252.712px; height: 100px;">
	<div class="text">임시보호소</div>
	<div class="right_container" style="float: right;">
		<select class="category" id="category" name="category" size="1" style="">
			<option value="">데리고있어요 / 데리고갔어요</option>
			<option value="찾습니다">데리고있어요</option>
			<option value="발견했습니다">데리고갔어요</option>
		</select>
    	<form action="">
    		<input type="text" class="searchInput" id="comment" name="text" placeholder="검색"/>
			<button class="searchBtn" type="submit" class="Btn">검색</button>
			<button class="writeBtn" type="submit" class="Btn">글쓰기</button>
		</form>
	</div>
</div>

<div class="album" style="height: 1000px">
	<%
            // 게시물 목록을 받아오는 코드 (예를 들어, posts는 List<Post> 형식이라고 가정)

            // 게시물 목록을 한 행에 3개씩 출력
            int count = 0;
            for (int i=0;i<9;i++) {
                if (count % 3== 0) {
                    out.println("<div class='row'>");
                }
                if(count % 3 == 0){
                	 out.println("<div class='column1'>");
                     out.println("<img class=\"tempImg\" src='/image/mung.png'>");
                     out.println("<div class=\"boardContainer\">");  
                     out.println("<span class=\"dogName\">뽀삐</span>");
                     out.println("<span class=\"state\">완료</span>");
                     out.println("<br/><span class=\"address\">가산디지털단지역</span>");
                     out.println("</div></div>");
                }
                if(count % 3 == 1){
               	 out.println("<div class='column2'>");
                 out.println("<img class=\"tempImg\" src=\"/image/tempdog01.png\">");
                 out.println("<div class=\"boardContainer\">");  
                 out.println("<span class=\"dogName\">뽀삐</span>");
                 out.println("<span class=\"state\">완료</span>");
                 out.println("<br/><span class=\"address\">가산디지털단지역</span>");
                 out.println("</div></div>");
               }
                if(count % 3 == 2){
               	 out.println("<div class='column3'>");
                 out.println("<img class=\"tempImg\" src=\"/image/tempdog01.png\">");
                 out.println("<div class=\"boardContainer\">");  
                 out.println("<span class=\"dogName\">뽀삐</span>");
                 out.println("<span class=\"state\">완료</span>");
                 out.println("<br/><span class=\"address\">가산디지털단지역</span>");
                 out.println("</div></div>");
               }
                count++;
                if (count % 3 == 0) {
                    out.println("</div>");
                }
            }
            // 마지막 행이 3개 미만일 경우를 처리
            
        %>
       	<div class="pageDiv" id="">
			<a>&lt;</a>
			<c:forEach begin="1" end="2" var="i">
			<c:choose>
			<c:when test="1">
				<a href="boardlist?page=" class="select">1</a>
			</c:when>
			<c:otherwise>
				<a href="boardlist?page=" class="btn">다음</a><a>&gt;</a>
			</c:otherwise>
			</c:choose>
	</c:forEach>
	
		</div>
</div>
</body>
</html>