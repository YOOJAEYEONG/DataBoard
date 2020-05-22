<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String uri =request.getRequestURI();
String a1 = "", a2 = "", a3 = "";
if(uri.indexOf("08Board2")>=0){
	a1 = "active";
}
else if(uri.indexOf("Dataroom")>=0){
	a2 = "active";
}
else {
	a3 = "active";
}
%>
    
    
    
<div class="col-3">
	<div style="height: 100px; line-height: 0px; margin:10px 0; text-align: center; padding-top:50px 
		color:#ffffff; background-color:rgb(133, 133, 133); border-radius:10px;">
		<form action="LoginProcess.jsp">			
			<input class="form-control" type="text" name="user_id" tabindex="1" placeholder="아이디"/>
			<input class="form-control" type="password" name="user_pw" tabindex="2" placeholder="비밀번호"/>
		</form>
	</div>
	<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" 
		aria-orientation="vertical">
		<a class="nav-link <%=a1 %>" id="v-pills-home-tab"  
			href="../08Board2/BoardList.jsp" role="tab" 
			aria-controls="v-pills-home" aria-selected="true">자유게시판</a>
		<a class="nav-link <%=a2 %>"  id="v-pills-profile-tab"  
			href="../DataRoom/DataList" role="tab" 
			aria-controls="v-pills-profile" aria-selected="false">자료실</a>
		<a class="nav-link <%=a3 %>" id="v-pills-messages-tab"  
			href="#v-pills-messages" role="tab" 
			aria-controls="v-pills-messages" aria-selected="false">방명록</a>				
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" data-toggle="dropdown" 
			href="#" role="button" aria-haspopup="true" aria-expanded="false">Menu</a>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">Sub Menu 1</a>
				<a class="dropdown-item" href="#">Sub Menu 2</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#">Sub Menu 3</a>
				<a class="dropdown-item" href="#">Sub Menu 4</a>
			</div>
		</li>
	</div>
</div>