<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    /* 한글 깨짐 방지 */
    request.setCharacterEncoding("UTF-8");

    /* DB 접속 정보 */
    String user = "scott"; // oracle 계정
    String pw = "tiger";   // oracle 비밀번호
    String url = "jdbc:oracle:thin:@localhost:1521:wjy";
    String sql = "";

    /* DB 접속 */
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn = DriverManager.getConnection(url, user, pw);
%>