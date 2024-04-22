<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file = "dbConnection.jsp" %>
<%@ include file = "top.jsp" %>
<%@ include file = "nav.jsp" %>



<%
    sql = "SELECT custno from member_tbl_02 order by custno desc";
    ResultSet rs = con.prepareStatement(sql).executeQuery();
    int custno = 1;
    if(rs.next()){
        custno =rs.getInt(1)+1;
    }


%>
<center>
    <form action = "dbHandler.jsp" jsp method="post">
        <input type = "hidden" name="process" value="insert"/>
        <table border=1>

            <tr>
                <td>회원번호</td>
                <td><input type = "text" name ="custno" value="<%=custno%>"></td>
            </tr>
            <tr>
                <td>회원성명</td>
                <td><input type = "text" name ="custname"></td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><input type = "text" name ="phone"></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><input type = "text" name ="address"></td>
            </tr>
            <tr>
                <td>가입일자</td>
                <td><input type = "text" name ="joindate"></td>
            </tr>
            <tr>
                <td>등급</td>
                <td><input type = "text" name ="grade"></td>
            </tr>
            <tr>
                <td>도시</td>
                <td><input type = "text" name ="city"></td>
            </tr>

            <tr>
                <center>
                    <td colspan = "2">
                        <input type = "submit"  value ="등록">
                        <button onclick="/list.jsp">조회</button>
                    </td>
                </center>
            </tr>

        </table>
    </form>
</center>