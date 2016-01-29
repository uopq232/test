<%@ page contentType="text/html; charset=UTF-8" %>

<%
// 프로젝트 경로 자동 추출, Context root 명 자동 추출
// /ws_web/notice_v2jq -> /notice_v2jq
String root = request.getContextPath(); 
%>

<!-- 화면 상단 메뉴 --> 
<DIV style='text-align: left; margin: 0px; padding: 0px;'>
  ARTBox ver 0.7<br>
  <nav id="topMenu">
    <ul>
      <li><a class='menuLink' href='<%=root %>/index.do'>HOME</a></li>
      <%
      if (session.getAttribute("id") == null){
      %>
        <li><a class='menuLink' href='<%=root %>/member/login.do'>로그인</a></li>
      <%
      }else{
      %>
        <li><a class='menuLink' href='<%=root %>/member/logout.do'>${id} 로그아웃</a></li>      
      <%  
      }
      %>
      
      <li><a class='menuLink' href='<%=root %>/noticev3/list.jsp'>공지사항</a></li>
      <li><a class='menuLink' href='<%=root %>/newsv2/list.jsp'>News</a></li>
      <li><a class='menuLink' href='<%=root %>/urlv2/list.jsp'>URL</a></li>
      <li><a class='menuLink' href='<%=root %>/pdsv3/list.jsp'>영화</a></li>
      <li><a class='menuLink' href='<%=root %>/member/create.do'>JOIN</a></li>
      <li><a class='menuLink' href='<%=root %>/code/list.do'>코드</a></li>
      <li><a class='menuLink' href='<%=root %>/blogcategory/list.do'>게시판목록</a></li>
      <li><a class='menuLink' href='<%=root %>/blog/list.do'>게시판</a></li>

      <%
      if (session.getAttribute("act") == null){
      %>
        <li><a class='menuLink' href='<%=root %>/admin1/login_ck_form.jsp'>Admin</a></li>
      <%
      }else{
      %>
        <li><a class='menuLink' href='<%=root %>/admin1/logout_proc.jsp'>Logout</a></li>
        <li><a class='menuLink' href='<%=root %>/admin1/list.jsp'>관리자</a></li>
      <%
      }
      %>
      
    </ul>
  </nav>

</DIV>

