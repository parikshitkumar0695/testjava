<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Establish MySQL database connection with JSP -- Mitrajit's Tech Blog </title>
  <style>
  h1 { clear:both; margin-bottom:30px; font-size:17px; }
  h1 a { font-weight:bold; color:#0099FF; }
  
  table { border:1px solid #ccc; width:600px; color:#fff; }
  table th {
    background-color:#0099FF;
    color:#fff;
  }
  td {
    background-color:#00CCFF;
    height:40px;
    text-align:center;
  }
  </style>
  </head>
  //https://github.com/arjunbamoriya535/myproject.git
  <body>
    <h1>Read the full article -- <a href="http://www.mitrajit.com/2016/11/establish-mysql-database-connection-jsp/" target="_blank">Establish MySQL database connection with JSP</a> in Mitrajit's Tech Blog</h1>
  <%
  Connection con = null;
  try{
    Class.forName("com.mysql.jdbc.Driver"); 
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_test","root","");
    Statement st= con.createStatement(); 
    ResultSet rs=st.executeQuery("select * from user_details");
    %>
   <div class="tab" style="align:center;background-color:yellow;"><table cellpadding="5" cellspacing="1">
      <tbody>
        <tr>
          <th>SL.</th>
          <th>NAME</th>
          <th>MOBILE</th>
          <th>COUNTRY</th>
        </tr>
    <%
    while(rs.next()) {
      %>
       <tr>
        <td align="center"><%=rs.getInt(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td align="center"><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
      </tr>
      <% 
    }
    con.close();
    %>
      </tbody>
    </table>
  <%
  } catch (Exception e) {
    out.println(e.getStackTrace());
    con.close();
  }
  %></div> 
  </body>
</html>