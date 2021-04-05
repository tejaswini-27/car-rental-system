<%-- 
    Document   : OwnerRegAction
    Created on : 29 Sep, 2020, 5:52:17 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String vid=request.getParameter("vid");
     int days=Integer.parseInt(request.getParameter("days"));
      float price=Float.parseFloat(request.getParameter("price"));
      
      float amount=days*price;
      
      
  String username=(String)session.getAttribute("username");
     String id=(String)session.getAttribute("id");
   
  
    
    String query="insert into booking values(null,'"+vid+"','"+price+"','"+days+"','"+amount+"','"+username+"','"+id+"',now(),'waiting')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
%>
      <script type='text/javascript'>
          window.alert("Successful...!!");
          window.location="MyBooking.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert(" Failed..!!");
          window.location="MyBooking.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>