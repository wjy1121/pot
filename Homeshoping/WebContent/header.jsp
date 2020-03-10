<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbConnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/common.css" />
<title>쇼핑몰 회원 관리 Ver 1.0</title>
</head>
<body>
    <div class="header">
    	<center>
        <h1 class="logo">쇼핑몰 회원 관리 Ver 1.0</h1>
        </center>
        <div class="gnb">
            <ul>
                <a href="./index.jsp"><b>회원등록</b></a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="./list.jsp"><b>회원목록 조회/수정</b></a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="./money.jsp"><b>회원매출조회</b></a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="./index.jsp"><b>홈으로.</b></a>
            </ul>
        </div>
    </div>
    <div class="container">
        <div class="content">