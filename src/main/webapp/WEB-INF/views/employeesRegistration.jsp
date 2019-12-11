<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<td><form:select path="bYear" items="${byear}" itemLabel="label" />年
<form:select path="bMonth" items="${bmonth}" itemLabel="label" />月
<form:select path="bDay" items="${bday}" itemLabel="label" />日</td>
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
<td><form:select path="eYear" items="${eyear}" itemLabel="label" />年
<form:select path="eMonth">
<% for(int i = 0;i <= 12; i++) { %>
<c:choose>
<c:when	test="<%= i == 4 %>"><form:option value="4" selected="true" /></c:when>
<c:otherwise><form:option value="<%=i %>" /></c:otherwise>
</c:choose>
<%} %>
</form:select>月
<form:select path="eDay" items="${eday}" itemLabel="label" />日</td>
</tr>
<tr>
<td>部署</td>
<td>
<form:checkboxes path="post" items="${post}" />
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