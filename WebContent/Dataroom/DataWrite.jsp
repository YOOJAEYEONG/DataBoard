<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<!DOCTYPE html>
<html lang="en">
<jsp:include page="../common/boardHead.jsp" />
<body>
<div class="container">
	<jsp:include page="../common/boardTop.jsp" />
	<div class="row">		
		<jsp:include page="../common/boardLeft.jsp" />
		<div class="col-9 pt-3">
			<h3>자료실 - <small>Write(작성)</small></h3>
				<script>
					function checkValidate(Frm){
/* 빈값으로 submit하면 DB에서 not null 조건에 위배되어 입력안됨  */
						if(Frm.name.value == "" ){
							alert('이름없슴');
							Frm.name.focus();
							return false;
						}
						if(Frm.pass.value == "" ){
							alert('비번없슴');
							Frm.content.focus();
							return false;
						}
						if(Frm.content.value == "" ){
							alert('내용없슴');
							Frm.content.focus();
							return false;
						}
						if(Frm.title.value == ""){
							alert('제목없음');
							Frm.title.focus();
							return false;
						}
						return true;
					}
					var checkValidate2 = function(frm){
						//무기명함수이다. 실행부는 위와 같음
					}

				</script>	
						
						
			<div class="row mt-3 mr-1">
				<table class="table table-bordered table-striped">
				<!--파일업로드를 위해서는 enctype을 선언해야한다. 안하면 전송안됨-->
				<form action="../DataRoom/DataWrite" name="writeFrm" method="post" 
					onsubmit="return checkValidate(this);" enctype="multipart/form-data">
				<colgroup>
					<col width="20%"/>
					<col width="*"/>
				</colgroup>
				<tbody>
					<tr>
						<th class="text-center align-middle">작성자</th>
						<td>
							<input type="text" class="form-control"	style="width:100px;"
								name="name"/>
						</td>
					</tr>
					<tr>
						<th class="text-center" style="vertical-align:middle;"
							>패스워드</th>
						<td>
							<input type="password" class="form-control"
								style="width:200px;" name="pass"/>
						</td>
					</tr>
					<tr>
						<th class="text-center" 
							style="vertical-align:middle;" >제목</th>
						<td>
							<input type="text" name="title" class="form-control" />
						</td> 
					</tr>
					<tr>
						<th class="text-center"  
							style="vertical-align:middle;">내용</th>
						<td>
							<textarea rows="1" name="content" id="summernote"
								class="form-control"></textarea>
							 <script>
						      $('#summernote').summernote({
						        placeholder: '내용을 입력하세요',
						        tabsize: 2,
						        height: 200
						      });
						    </script>	 
						</td>
					</tr>
							
					<tr>
						<th class="text-center"
							style="vertical-align:middle;">첨부파일</th>
						<td>
							<input type="file" class="form-control" name="attachedfile"/>
						</td>
					</tr>
				</tbody>
				</table>
				
			</div>
			<div class="row mb-3">
				<div class="col text-right">
		
					<button type="submit" class="btn btn-danger">전송하기</button>
					<button type="reset" class="btn btn-dark">Reset</button>
					<button type="button" class="btn btn-warning" 
						onclick="location.href='./DataList?nowPage=${param.nowPage }';">리스트보기
					</button>
				</div>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="../common/boardBottom.jsp" />
</div>
</body>
</html>

<!-- 
	<i class='fas fa-edit' style='font-size:20px'></i>
	<i class='fa fa-cogs' style='font-size:20px'></i>
	<i class='fas fa-sign-in-alt' style='font-size:20px'></i>
	<i class='fas fa-sign-out-alt' style='font-size:20px'></i>
	<i class='far fa-edit' style='font-size:20px'></i>
	<i class='fas fa-id-card-alt' style='font-size:20px'></i>
	<i class='fas fa-id-card' style='font-size:20px'></i>
	<i class='fas fa-id-card' style='font-size:20px'></i>
	<i class='fas fa-pen' style='font-size:20px'></i>
	<i class='fas fa-pen-alt' style='font-size:20px'></i>
	<i class='fas fa-pen-fancy' style='font-size:20px'></i>
	<i class='fas fa-pen-nib' style='font-size:20px'></i>
	<i class='fas fa-pen-square' style='font-size:20px'></i>
	<i class='fas fa-pencil-alt' style='font-size:20px'></i>
	<i class='fas fa-pencil-ruler' style='font-size:20px'></i>
	<i class='fa fa-cog' style='font-size:20px'></i>
	아~~~~힘들다...ㅋ
 -->