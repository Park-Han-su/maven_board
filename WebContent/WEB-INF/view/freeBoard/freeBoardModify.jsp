<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>자유게시판</h1>
	</div>
	<div style="width:650px;" align="right">
		<a href="./main.ino">리스트로</a>
	</div>
	<hr style="width: 600px">
	
	<form action="./freeBoardInsertPro.ino">
		<div style="width: 150px; float: left;">이름 :</div>
		<div style="width: 500px; float: left;" align="left"><input type="text" name="name"/></div>
		
		<div style="width: 150px; float: left;">제목 :</div>
		<div style="width: 500px; float: left;" align="left"><input type="text" name="title"/></div>
	
		<div style="width: 150px; float: left;">내용 :</div>
		<div style="width: 500px; float: left;" align="left"><textarea name="content" id="contentArea" rows="25" cols="65"  ></textarea></div>
		<div align="right">
		<input type="submit" value="글쓰기">
		<input type="button" value="다시쓰기" onclick="reWriteConfirm();">
		<input type="button" value="취소" onclick="cancelConfirm();">
		&nbsp;&nbsp;&nbsp;
		</div>
	
	</form>
	
	<script>
		function cancelConfirm(){
			var check = confirm("작성을 취소하시겠습니까?");
			if(check==true){
				document.location.href="http://localhost:8081/mavenBoard/main.ino";
			}else{
				return false;
			}
		}
		
		function reWriteConfirm(){
			var check = confirm("다시 작성하시겠습니까?");
			if(check==true){
				document.getElementById('contentArea').value="";
			}else{
				return false;
			}
		}
	</script>
	
</body>
</html>