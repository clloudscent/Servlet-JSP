<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file = "dbConnection.jsp" %>
<%@ include file ="top.jsp" %>
<%@ include file = "nav.jsp" %>

<center>
    <h3>회원매출조회</h3>
    <table border=1>
        <tr>
            <td>회원번호</td>
            <td>회원성명</td>
            <td>고객등급</td>
            <td>매출</td>
        </tr>

        <%
            sql = "SELECT member_tbl_02.custno, member_tbl_02.custname, member_tbl_02.grade, money_sum.sum_value FROM member_tbl_02 INNER JOIN (SELECT custno, sum(price) as sum_value from money_tbl_02 group by custno) money_sum ON member_tbl_02.custno = money_sum.custno ORDER BY money_sum.sum_value desc";
            ResultSet rs = con.prepareStatement(sql).executeQuery();
            while(rs.next()){
                String memberGrade = "";
                if(rs.getString(3).equals("A")){
                    memberGrade = "VIP";
                }else if(rs.getString(3).equals("B")){
                    memberGrade = "일반";
                }else if(rs.getString(3).equals("C")){
                    memberGrade = "직원";
                }
        %>
        <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=memberGrade %></td>
            <td><%=rs.getString(4) %></td>
        </tr>
        <%
            }
        %>
    </table>
</center>
</body>
</html>
