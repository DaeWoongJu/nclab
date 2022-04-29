<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<h1>글작성</h1>
<form action="" method="post" enctype="multipart/form-data">
	작성자&nbsp;&nbsp; <input type="text" name="id"><br>
	제목&nbsp;&nbsp; <input type="text" name="title"><br>
	내용<br>
	<textarea rows="5" cols="50" name="content"></textarea><br>
	<div class="form_section">
		<div class="form_section_title">
			<label>상품 이미지</label>
		</div>
		<div class="form_section_content">
			<input type="file" id="fileImage" name="images">
		</div>
	</div>

	<input type="submit" value="등록"><br>
</form>

<script type="text/javascript">

	$("input[type='file']").on("change", function(e){
		
		let formData = new FormData();
		
		let fileInput = $("input[name='images']");
		let fileList = fileInput[0].files;
		let fileObj = fileList[0];
		
		//console.log("fileList : " + fileList);
		//console.log("fileObj : " + fileObj);
		//console.log("fileName : " + fileObj.name);
		//console.log("fileSize : " + fileObj.size);
		console.log("fileType(MimeType)" + fileObj.type);
		if(!fileCheck(fileObj.name, fileObj.size)){
			return false;
		}
		//alert("등록");
		//formData.append("images", fileObj);
	});


	let regExp = new RegExp("(.*?)\.(jpg|png)$");
	let maxSize = 1048576;
	
	function fileCheck(fileName, fileSize){
		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
		if(!regExp.test(fileName)){
			alert("지원하지 않는 파일 형식입니다.");
			return false;
		}
		return true;
	}
	
</script>
</body>
</html>