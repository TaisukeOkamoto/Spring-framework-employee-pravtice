<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<form:form modelAttribute="employeeModel" action="/employee" method="post">
<table>
<tr>
<td>氏名</td>
<td><form:input path="name" /></td>
</tr>
<tr>
<td>フリガナ</td>
<td><form:input path="kana" /></td>
</tr>
<tr>
<td>性別</td>
<td><form:input path="gender"/></td>
</tr>
<tr>
<td>生年月日</td>
<td><form:select path="bYear" itemValue="1" itemLabel="bYear" /></td>年
<td><form:select path="bMonth" itemValue="2" itemLabel="bMonth" /></td>月
<td><form:select path="bDay" itemValue="3" itemLabel="bDay" /></td>日
</tr>
<tr>
<td>郵便番号</td>
<td><form:input path="zip" /></td>
</tr>
<tr>
<td>住所</td>
<td><form:input path="address" /></td>
</tr>
<tr>
<td>フリガナ</td>
<td><form:input path="kana" /></td>
</tr>
<tr>
<td>携帯番号</td>
<td><form:input path="phone" /></td>
</tr>
<tr>
<td>メールアドレス</td>
<td><form:input path="mail" /></td>
</tr>
<tr>
<td>入社年月日</td>
<td><form:input path="bYear" /></td>年
<td><form:input path="bMonth" /></td>月
<td><form:input path="bDay" /></td>日
</tr>
<tr>
<td>部署</td>
<td>
<%-- <form:checkboxes path="post" itemLabel="passport" items="${post.passport}" />ITパスポート<br />
<form:checkboxes path="post" itemLabel="kihon" items="${post.kihon}" />基本情報処理技術者<br />
<form:checkboxes path="post" itemLabel="ouyou" items="${post.ouyou}" />応用情報処理技術者<br />
<form:checkboxes path="post" itemLabel="other" items="${post.other}" />その他<br /> --%>
</td>
</tr>
<tr>
<td>保有資格</td>
<td><form:input path="kana" /></td>
</tr>
</table>
</form:form>
</body>
</html>