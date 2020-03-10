<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="header.jsp" %>
<center>
<h2>회원 매출 조회</h2>
<table>
    <colgroup>
        <col width="25%">
        <col width="25%">
        <col width="25%">
        <col width="25%">
    </colgroup>
    <thead>
        <tr>
            <th>회원번호</th>
            <th>회원성명</th>
            <th>고객등급</th>
            <th>매출</th>
        </tr>
    </thead>
    <tbody>
        <%
            sql  = "SELECT mb.custno, mb.custname, mb.grade, sum(mn.price) as total ";
            sql += "FROM scott.member_tbl_02 mb ";
            sql += "JOIN scott.money_tbl_02 mn on mb.custno = mn.custno ";
            sql += "group by (mb.custno, mb.custname, mb.grade) ";
            sql += "order by total desc";
            ResultSet res = conn.prepareStatement(sql).executeQuery();
            String custno, custname, grade, total;
            while (res.next()) {
                custno = res.getString("custno");
                custname = res.getString("custname");
                grade = res.getString("grade");
                total = res.getString("total");
                
                /* grade의 A, B, C에 대한 실제 권한을 매핑 */ 
                switch (grade) {
                    case "A" : grade = "VIP"; break;
                    case "B" : grade = "일반"; break;
                    case "C" : grade = "직원"; break;
                }
        %>
        <tr style="text-align:center;">
            <td><%= custno %></td>
            <td><%= custname %></td>
            <td><%= grade %></td>
            <td><%= total %></td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>
</center>
<%@ include file="footer.jsp" %>