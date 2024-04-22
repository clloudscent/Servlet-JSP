<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file = "dbConnection.jsp" %>


<%
    request.setCharacterEncoding("UTF-8");

    String custname, phone, address, city, grade;
    String process = request.getParameter("process");
    PreparedStatement pstmt = null;



    switch(process){
        case  "insert" :

            sql = "INSERT into member_tbl_02 (custname, phone, address, joindate, grade, city) values (?,?,?,?,?,?)";
            pstmt = con.prepareStatement(sql);

            System.out.println("custname: "+request.getParameter("custname"));

//            pstmt.setInt(1, Integer.parseInt(request.getParameter("custno")));
            pstmt.setString(1, request.getParameter("custname"));
            pstmt.setString(2, request.getParameter("phone"));
            pstmt.setString(3, request.getParameter("address"));
            pstmt.setString(4, request.getParameter("joindate"));
            pstmt.setString(5, request.getParameter("grade"));
            pstmt.setString(6, request.getParameter("city"));


            break;

        case "update" :


            sql = "UPDATE member_tbl_02 set phone=?, custname=?,  address=?, joindate=?, grade=?, city=? where custno=?";
            pstmt = con.prepareStatement(sql);

            pstmt.setString(2, request.getParameter("custname"));
            pstmt.setString(1, request.getParameter("phone"));
            pstmt.setString(3, request.getParameter("address"));
            pstmt.setString(4, request.getParameter("joindate"));
            pstmt.setString(5, request.getParameter("grade"));
            pstmt.setString(6, request.getParameter("city"));
            pstmt.setInt(7, Integer.parseInt(request.getParameter("custno")));

            break;
    }

    pstmt.executeUpdate();
    String move_url = "list.jsp";
%>
<script>
    location.href = "<%=move_url%>";
</script>