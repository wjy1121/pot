<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="header.jsp" %>
<center>
<h2>홈쇼핑 회원 등록</h2>
<table>
    <colgroup>
        <col width="10%">
        <col width="10%">
        <col width="20%">
        <col width="20%">
        <col width="20%">
        <col width="10%">
        <col width="10%">
    </colgroup>
    <thead>
        <tr>
            <th>회원번호</th>
            <th>회원성명</th>
            <th>전화번호</th>
            <th>주소</th>
            <th>가입일자</th>
            <th>고객등급</th>
            <th>거주지역</th>
        </tr>
    </thead>
    <tbody>
        <%
            sql = "SELECT * from scott.member_tbl_02 order by custno asc";
            ResultSet res = conn.prepareStatement(sql).executeQuery();
            String custno, custname, phone, address, joindate, grade, city;
            while (res.next()) {
                custno = res.getString("custno");
                custname = res.getString("custname");
                phone = res.getString("phone");
                address = res.getString("address");
                grade = res.getString("grade");
                city = res.getString("city");
                
                joindate = res.getString("joindate");
                if(joindate.length() > 10) joindate = joindate.substring(0,10);		//joindate의 time을 제외하고 가져옴
                
                switch (grade) {
                    case "A" : grade = "VIP"; break;
                    case "B" : grade = "일반"; break;
                    case "C" : grade = "직원"; break;
                }
        %>
        <tr style="text-align:center;">
            <td><a href="./update.jsp?custno=<%=custno%>"><%= custno %></a></td>
            <td><%= custname %></td>
            <td><%= phone %></td>
            <td><%= address %></td>
            <td><%= joindate %></td>
            <td><%= grade %></td>
            <td><%= city %></td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>
</center>
<%@ include file="footer.jsp" %>