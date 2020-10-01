<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>

<%
java.sql.Connection con = null;
try{
  Class.forName("com.mysql.jdbc.Driver"); 
  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_test","root","");
} catch (Exception e) {
  out.println(e.getMessage());
}
%>
