<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file = "dbConnection.jsp" %>
<%@ include file ="top.jsp" %>
<%@ include file = "nav.jsp" %>
<center><h3>회원목록조회/수정</h3></center>
<center>
    <table border = "1">
        <tr>
            <td>회원번호</td>
            <td>회원성명</td>
            <td>전화번호</td>
            <td>주소</td>
            <td>가입일자</td>
            <td>고객등급</td>
            <td>거주지역</td>
        </tr>
        <%
            sql = "SELECT member_tbl_02.custno, member_tbl_02.custname, member_tbl_02.phone, member_tbl_02.address, member_tbl_02.joindate, member_tbl_02.grade, member_tbl_02.city FROM member_tbl_02";

            ResultSet rs = con.prepareStatement(sql).executeQuery();

            String custno, custname, phone, address, joindate, grade, city;

            while(rs.next()){
                custno = rs.getString("custno");
                custname = rs.getString("custname");
                phone = rs.getString("phone");
                address = rs.getString("address");
                joindate = rs.getString("joindate");
                grade = rs.getString("grade");
                city = rs.getString("city");

        %>

        <tr>
            <td><a href = "edit.jsp?custno=<%=custno %>"><%=custno %></a></td>
            <td><%=custname %></td>
            <td><%=phone %></td>
            <td><%=address %></td>
            <td><%=joindate %></td>
            <td><%=grade %></td>
            <td><%=city %></td>
        </tr>
        <%
            }
        %>
    </table>
</center>
<%@ include file = "footer.jsp" %>