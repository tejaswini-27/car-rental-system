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

   
    String brand=request.getParameter("brand");
    String type=request.getParameter("type");
    String price=request.getParameter("price");
    String fueltype=request.getParameter("fueltype");
    String model=request.getParameter("model");
    String contact=request.getParameter("contact");
  
    
    String query="insert into vehicle values(null,'"+type+"','"+brand+"','"+price+"','"+fueltype+"','"+model+"','"+contact+"')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
%>
      <script type='text/javascript'>
          window.alert("Successful...!!");
          window.location="Add_Vehicles.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert(" Failed..!!");
          window.location="Add_Vehicles.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>