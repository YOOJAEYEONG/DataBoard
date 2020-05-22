<%@page import="model.BbsDTO"%>
<%@page import="model.BbsDAO"%>
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
			<h3>자료실 - <small>View(상세보기)</small></h3>
						
			<div class="row mt-3 mr-1">
				<table class="table table-bordered">
				<colgroup>
					<col width="20%"/>
					<col width="30%"/>
					<col width="20%"/>
					<col width="*"/>
				</colgroup>
				<tbody>
					<tr>
						<th class="text-center table-active align-middle">작성자</th>
						<td>${dto.name }</td>
						<th class="text-center table-active align-middle">작성일</th>
						<td>${dto.postdate} </td>
					</tr>
					<tr>
						<th class="text-center table-active align-middle">다운로드수</th>
						<td>${dto.downcount} </td>
						<th class="text-center table-active align-middle">조회수</th>
						<td>${dto.visitcount}</td>
					</tr>
					<tr>
						<th class="text-center table-active align-middle">제목</th>
						<td colspan="3">${dto.title}</td>
					</tr>
					<tr>
						<th class="text-center table-active align-middle">내용</th>
						<td colspan="3" class="align-middle" style="height:200px;">
							<%--
							textarea에서 엔터키로 줄바꿈을 한 후 DB에 저장하면 \r\n으로 저장된다.
							HTML 페이지에서 출력할때는 <br>태그로 문자열을 변경해야한다.  --%>
							${dto.content}
						</td>
					</tr>
					<tr>
						<th class="text-center table-active align-middle">첨부파일</th>
						<td colspan="3">
						<!--첨부파일이 있는경우만 보여줌  -->
							<c:if test="${not empty dto.attachedfile }">
								${dto.attachedfile }
								<a href="./Download?filename=${dto.attachedfile }&idx=${dto.idx }">
								[다운로드]
								</a>
							</c:if>
						</td>
					</tr>
				
				</tbody>
				</table>
			</div>
			<div class="row mb-3">
				<div class="col-6">	
				<!--작성용소스와 다름. 수업중 변경했음  -->
					<button type="button" class="btn btn-secondary"
						onclick="location.href='./DataPassword?idx=${
							param.idx}&mode=edit&nowPage=${
							param.nowPage}&searchColumn=${
							param.searchColumn}&searchWord=${
							param.searchWord}';">수정하기</button>

					<button type="button" class="btn btn-success"
						onclick="location.href='../DataRoom/DataPassword?idx=${
							dto.idx}&mode=delete&nowPage=${
							param.nowPage }&searchColumn=${
							param.searchColumn}&searchWord=${
							param.searchWord}';">삭제하기</button>
				</div>
				<div class="col-6 text-right pr-5">					
					<button type="button" class="btn btn-warning"
						onclick="location.href='DataList?nowPage=${
							param.nowPage }&searchColumn=${
							param.searchColumn}&searchWord=${
							param.searchWord}';">
					리스트보기</button>
				</div>
			</div>
			<!--게시물삭제는 로그인된 상태이므로 해당 게시물의 일련번호만
			서버로 전송하면된다. 이때 hidden폼을 사용하고, JS의 submit()
			을 실행하여 폼값을 전송한다. 해당 form태그는 HTML문서 어디든지 
			위치할 수 있다.  -->
			<form name="deleteFrm">
				<input type="hidden" name="num" value=" " />
			</form>
		</div>
	</div>
	<jsp:include page="../common/boardBottom.jsp" />
</div>
</body>
</html>
