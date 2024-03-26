<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
 <script>
 //�̰Ŵ� �����۸�ũ ��ũ��Ʈ����
    function addLink() {
      var url = prompt("Enter the URL:");
      document.execCommand('createLink', false, url);
    }
 //�̰Ŵ� �۾� �� �ٲٴ� ��ũ��Ʈ
 	function changeTextColor() {
     var color = document.getElementById("colorPicker").value;
     document.execCommand('foreColor', false, color);
   }
 //�̰Ŵ� ��� �� �ٲٴ� ��ũ��Ʈ
 	function changeBackgroundColor(color) {
 	      document.execCommand('hiliteColor', false, color);
 	    }
  </script>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">	
	.freeContainer {
		width : 1280px;
		margin : 0 16.6%;
 	}
 	#freeCategory{
 		width :1000px;
 		margin : 0 auto;	
  	}
  	.writeContainer {
  		width :900px;
 		margin : 0 auto;
 		
  	}
  	.writeTitle{
  		background-color: #f5f5f5;
  		width: 900px;
  		padding: 10px;
  		margin-bottom: 10px;
  		border-radius: 15px;
  		box-shadow: inset 1px 3px 3px rgba(0, 0, 0, 0.1);
  		border: 0; /* input�� border ���ֱ� */
  	}
  	  	 /* Ȱ��ȭ�� input�� border ���ֱ� */
    input:focus {
        outline: none;
    }
  	.content {
        background-color: #f5f5f5;
        width: 900px; 
        height: 500px; 
        padding: 10px;
        margin: 10px auto;
        border-radius: 20px;
        box-shadow: inset 1px 3px 3px rgba(0, 0, 0, 0.1);
    }

    .text-area {
        width: 100%; /* textarea ����� ���� �ʺ� 100%�� ���� */
        height: 400px; /* textarea ����� ���� ���̸� 100%�� ���� */
        resize: none; /* textarea ����� ũ�� ������ ��Ȱ��ȭ */
        border: 0; /* textarea ����� �׵θ� ���� */
        outline: none; /* textarea ����� ��Ŀ�� ǥ�� ���� */
        background-color: transparent; /* textarea ����� ������ �������� ���� */
        font-size: 14px; /* textarea ����� �۲� ũ�� ���� */
        line-height: 1.5; /* textarea ����� �� ���� ���� */
        padding: 10px;
        margin: 10px auto;
    }
    .yellowBtn {
    	text-align: center;
		margin: 0 auto;
		background-color: #FED74B;
  		width: 65px;
  		padding: 5px;
  		border-radius: 17px;
  		border : 0;
  		box-shadow: 1px 4px 0px rgba(0, 0, 0, 0.1);
	}
    .footer {
  		height: 200px;
  	}
</style>
<style>
  /* ��ũ�� ������ ���� ��Ÿ�� */
    .scroll-box {
        background-color: #f5f5f5;
        width: 880px; 
        height: 400px;
        overflow: auto;
        padding: 10px;
        margin: 10px auto;
        outline: none;
        border: 0;
        border-radius: 20px;
        overflow-x: hidden; /* ���� ��ũ�� ���� */
    }
    .scroll-box::-webkit-scrollbar {
        width: 10px;
    }
    .scroll-box::-webkit-scrollbar-thumb {
    	background-color: #D9D9D9;
    	min-height: 10px; 
    	border-radius: 10px;
    	background-clip: padding-box;
  	}
  
  .scroll-box::-webkit-scrollbar-track {
        background-color: transparent;
        border-radius: 10px;
    }

</style>
<style>
.toolbar {
    background-color: #ffffff;
    width: 800px; 
    height: 20px;
    border-radius: 18px;
    padding: 10px;
    margin: 10px auto;
    margin-bottom: 10px;
    display: flex;
    justify-content: center;
    align-items: center;
}

.toolbar-button {
    background-color: transparent;
    border: none;
    cursor: pointer;
    padding: 5px 10px;
    border-radius: 3px;
    margin-right: 5px;
}

.bold-button {
	font-size: 17px;
    font-weight: bold;
    display:
}

.italic-button {
	font-size: 17px;
    font-style: italic;
}

.underline-button {
	font-size: 17px;
    text-decoration: underline;
}
.strike-button {
	font-size: 17px; 
    text-decoration: line-through;
}

.font-size-select {
	margin-left: 10px;
 	border-radius: 3px;
	border:0;
    padding: 5px;
    outline: none;
}
.imgBtn {
	margin-left: 8px;
	margin-right: 8px;
	width: 20px;
	height: 20px;
}
#colorPicker {
    border: 0;
    border-radius: 3px;
    height: 15px;
  }
#bgColorPicker {
    border:0;
    border-radius: 3px;
  }
</style>
</head>
<body>
<div class = "freeContainer">
	<jsp:include page="/header.jsp"/>
	<br><br><br>
	<div id = "freeCategory">
		<h2 style="margin-bottom: 5px;">&nbsp;�����Խ���</h2>
		<h4 style = "font-weight : lighter; margin-top: 0; margin-left: 40px; ">�Խù��ۼ�</h4>
	</div>
<div class="writeContainer">
    <input class="writeTitle" type="text" placeholder="  ����  " />    
    <div class="content">
        <div class="toolbar">
        	<select class="toolbar-select font-size-select" onchange="document.execCommand('fontSize', false, this.value);">
        		<option value="1">Small</option>
        		<option value="2">Normal</option>
        		<option value="3">Large</option>
        		<option value="4">Very Large</option>
    		</select>
    		<div class="imgBtn"></div>
    		<button class="toolbar-button bold-button" onclick="document.execCommand('bold', false, '');">B</button>
    		<button class="toolbar-button italic-button" onclick="document.execCommand('italic', false, '');">I</button>
    		<button class="toolbar-button underline-button" onclick="document.execCommand('underline', false, '');">U</button>
    		<button class="toolbar-button strike-button" onclick="document.execCommand('strikeThrough', false, '');">S</button>
    		<img src="<%=request.getContextPath()%>/image/quote.png" class = "imgBtn" onclick="quoteText()">
    		<div class="imgBtn"></div>
    		<input type="file" id="fileInput" style="display: none;" accept="image/*" onchange="handleFiles(this.files)">
    		<img src="<%=request.getContextPath()%>/image/link-icon.png" class="imgBtn" style="width:auto;hight:50%;" onclick="addLink()">
    		<img src="<%=request.getContextPath()%>/image/image.png" class = "imgBtn" onclick="document.getElementById('fileInput').click()">
    		<div class="imgBtn"></div>
    		<img src="<%=request.getContextPath()%>/image/��������.png" class = "imgBtn" onclick="document.execCommand('justifyLeft', false, '');">
    		<img src="<%=request.getContextPath()%>/image/�������.png" class = "imgBtn" onclick="document.execCommand('justifyCenter', false, '');">
    		<img src="<%=request.getContextPath()%>/image/����������.png" class = "imgBtn" onclick="document.execCommand('justifyRight', false, '');">
  			<div>A
  			<img src="<%=request.getContextPath()%>/image/��������.png" style = "height:7px;">
  			<input type="color" id="colorPicker" style="margin-right: 5px;">
    		<button class="toolbar-button" onclick="changeTextColor()"></button>
    		</div>
    		<input type="color" id="bgColorPicker" class="toolbar-button" onchange="changeBackgroundColor(this.value)">
    		
        </div>
        <div class="scroll-box">
            <img src="<%=request.getContextPath()%>/image/dog1.jpg" style="width: 100%; height: auto; margin-bottom: 10px;">
            <textarea class="text-area" style="overflow: hidden;"></textarea>
        </div>
    </div>
</div>
	<br><br>
	<div class="yellowBtn">�� ��</div>
</div>
<div class="footer"></div>	
</body>
</html>