<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Jinju_Flower</title>

</head>


<body style="height:100%;">


	

<div id="wrap" style="margin:auto;  padding:80px; height:100%;">

<br><br><br>

<section id="uploadFormArea">
<form action="productUploadInsert.jsp" method="post">

<table border="1" style="width=700" >

 <tr>
  <td width="150">
  타입
  </td>
  <td width="350" align="left">
  <select name="productVarietyCode">
   <option value="1">화환</option>
   <option value="2">바구니</option>
   <option value="3">압화</option>
   <option value="4">화분식물</option>
  </select>
  </td>
 </tr>
 
 <tr>
  <td>제목 및 상품명</td>
  <td align="left"><input type="text" name="title" size="30"></td>
 </tr>
 
 <tr>
  <td>가격</td>
  <td align="left"><input type="number" name="price" size="10">원</td>
 </tr>
 
 
<tr>
  <td width="150">
  판매가능 여부(게시글 공개 여부)
  </td>
  <td width="350" align="left">
  <select name="available">
   <option value="T">가능</option>
   <option value="F">불가능</option>
  </select>
  </td>
 </tr>
 
 <tr><!-- 이미지 업로드 부분 시작-->
  <td>이미지</td>
  <td align="left">
  <div class="container">
      <!-- Input Markup -->
      <input type="file" id="default-file" hidden="hidden" />

      <!-- Button Markup -->
      <button id="custom-btn" type="button" class="btn">
        CHOOSE FILE
      </button>

      <!-- Choose File TEXT Markup -->
      <span id="custom-space"> <strong> No</strong> File, Selected!😭</span>
  </div>
   <div class="preview_holder">
      <div id="preview">
        <img src="" id="preview_img" class="preview_img"  style="width:100px;height:100px;">
        <span id="preview_text" class="preview_text">Image Preview</span>
      </div>
    </div>
    <input type="text" id="picture" name="pictureString" style="visibility:hidden;">
  </td>
 </tr>
 <!-- 이미지 업로드 부분 끝 -->
  <tr>
  <td>게시글 내용</td>
  <td align="left" >
  <textarea name="content" style="width:600px; height:200px; resize:none;"></textarea>
  </td>
 </tr>
 
 <tr>
  <td colspan="2"><input type="submit" value="상품등록">  <input type="reset" value="다시작성"></td>
 
 </tr>
 
</table>
</form>

</section>
	<script src="js/imageScript.js"></script> <!-- 사진 불러오는 js -->
</div>


</body>
</html>