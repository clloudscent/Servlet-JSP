<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file = "dbConnection.jsp" %>
<%@ include file = "top.jsp" %>
<%@ include file = "nav.jsp" %>
<%
    sql = "SELECT * from member_tbl_02 where custno=?";
    PreparedStatement pstmt = con.prepareStatement(sql);

    int custno = (Integer.parseInt(request.getParameter("custno")));
    pstmt.setInt(1, custno);

    ResultSet rs =  pstmt.executeQuery();
    rs.next();


    String joindate = rs.getString("joindate");
    if(joindate.length()>10){
        joindate = joindate.substring(0,10);
    }

%>
<form action = "dbHandler.jsp" method="post">
    <input type = "hidden" name="process" value="update"/>
    <table>
        <tr>
            <td>회원번호</td>
            <td><input type = "text" name ="custno" value="<%=rs.getString("custno")%>"></td>
        </tr>
        <tr>
            <td>회원성명</td>
            <td><input type = "text" name ="custname" value="<%=rs.getString("custname")%>"></td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td><input type = "text" name ="phone" value="<%=rs.getString("phone")%>"></td>
        </tr>
        <tr>
            <td>주소</td>
            <td><input type = "text" name ="address" value="<%=rs.getString("address")%>"></td>
        </tr>
        <tr>
            <td>가입일자</td>
            <td><input type = "text" name ="joindate" value="<%=joindate%>"></td>
        </tr>
        <tr>
            <td>등급</td>
            <td><input type = "text" name ="grade" value="<%=rs.getString("grade")%>"></td>
        <tr>
            <td>도시</td>
            <td><input type = "text" name ="city" value="<%=rs.getString("city")%>"></td>
        </tr>


        <tr>
            <td colspan = "2">
                <input type = "submit" value ="수정">
                <button onclick="/list.jsp">조회</button>
            </td>
        </tr>
    </table>
</form>