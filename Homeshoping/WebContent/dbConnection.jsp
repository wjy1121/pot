<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");

    /* DB 접속 정보 */
    String user = "scott";
    String pw = "tiger";
    String url = "jdbc:oracle:thin:@localhost:1521:wjy";
    String sql = "";

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn = DriverManager.getConnection(url, user, pw);
%>