<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">	
	.freeContainer {
		width : 1280px;
		margin : 0 auto;
 	}
 	#freeCategory{
 		width :1000px;
 		margin : 0 auto;	
  	}
  	.listContainer{
 		width :1000px;
 		margin : 0 auto;
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
<div class="freeContainer">
    <jsp:include page="/header.jsp"/>
    <br><br><br>
    <div id="freeCategory">
        <h1>&nbsp;�����Խ���</h1>
        <div class="searchContainer">
            <span class="searchBox">
                <input type="text" placeholder="  �˻�..." />
            	<button id="searchBtn">�˻�</button>
            </span>
        </div>
    </div>
<div class = "listContainer">
<table class="board">
  <thead>
    <tr>
  	  <th>�±�
  	  <div style = "display:inline-block;">
  	  		<select>
				<option value="daily">#�ϻ�</option>
				<option value="dogCon">#�����������ڶ�</option>
				<option value="infoShare">#����/����</option>
				<option value="Question">#����</option>
			</select>
		</div></th>
  	  	
      <th>����</th>
      <th>�ۼ���</th>
      <th>�ۼ���</th>
      <th>��ȸ��</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="dogCon">#�����������ڶ�</a></td>
      <td><a href="post1.html">�츮�� ������ ������ ¯ �Ϳ���;</a></td>
      <td>���ڸ�</td>
      <td>2024-03-25</td>
      <td>109</td>
    </tr>
    <tr>
      <td><a href="dogCon">#�����������ڶ�</a></td>
      <td><a id="title" href="post2.html">�츮�� ������ ������ ¯ �Ϳ���;</a></td>
      <td>���ڸ�</td>
      <td>2024-03-24</td>
      <td>486</td>
    </tr>
    <tr>
      <td><a href="dogCon">#�����������ڶ�</a></td>
      <td><a href="post2.html">�츮�� ������ ������ ¯ �Ϳ���;</a></td>
      <td>���ڸ�</td>
      <td>2024-03-24</td>
      <td>1109</td>
    </tr>
    <tr>
      <td><a href="dogCon">#�����������ڶ�</a></td>
      <td><a href="post2.html">�츮�� ������ ������ ¯ �Ϳ���;</a></td>
      <td>���ڸ�</td>
      <td>2024-03-24</td>
      <td>19</td>
    </tr>
    <tr>
      <td><a href="dogCon">#�����������ڶ�</a></td>
      <td><a href="post2.html">�츮�� ������ ������ ¯ �Ϳ���;</a></td>
      <td>���ڸ�</td>
      <td>2024-03-24</td>
      <td>9</td>
    </tr>
    <tr>
      <td><a href="dogCon">#�����������ڶ�</a></td>
      <td><a href="post2.html">�츮�� ������ ������ ¯ �Ϳ���;</a></td>
      <td>���ڸ�</td>
      <td>2024-03-24</td>
      <td>5</td>
    </tr>
     <tr>
      <td><a href="dogCon">#�����������ڶ�</a></td>
      <td><a href="post2.html">�츮�� ������ ������ ¯ �Ϳ���;</a></td>
      <td>���ڸ�</td>
      <td>2024-03-24</td>
      <td>10</td>
    </tr>
    <tr>
      <td><a href="infoShare">#����/����</a></td>
      <td><a href="post2.html">�̹��� OO��� ȯ�� ���� �������� �� ���⼭ ȯ�� ��������</a></td>
      <td>�عٶ�⾾����</td>
      <td>2024-03-24</td>
      <td>1094</td>
    </tr>
    <tr>
      <td><a href="infoShare">#����/����</a></td>
      <td><a href="post2.html">��ȣ�ҿ� �ö�� ��Ʈ���� �н� �ƴϰ� ���ⰰ�ƿ��</a></td>
      <td>���������ȴ�</td>
      <td>2024-03-24</td>
      <td>1011</td>
    </tr>
    <tr>
     <td><a href="Question">#����</a></td>
      <td><a href="post2.html">Ȥ�� ���� ��ü�� ��õ�ص� �ǳ���?</a></td>
      <td>�Ͽ��������̴¼�</td>
      <td>2024-03-24</td>
      <td>412</td>
    </tr>
    <tr>
      <td><a href="daily">#�ϻ�</a></td>
      <td><a href="post2.html">�̹��� ��󷱿��� �����̴ּ� ���ֺ� ã���ϴ� �Ф�</a></td>
      <td>����������ġ</td>
      <td>2024-03-24</td>
      <td>369</td>
    </tr>
    <tr>
      <td><a href="Question">#����</a></td>
      <td><a href="post2.html">�� �������� ���� �� ����� ������ �ƽôº�?</a></td>
      <td>��õ�����ָ�</td>
      <td>2024-03-24</td>
      <td>374</td>
    </tr>
  </tbody>
</table>
</div>    
    <!-- ���������̼� -->
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
  <button class="yellowBtn">�۾���</button>
</div>
<div class="footer"></div>

</div>
</body>
</html>