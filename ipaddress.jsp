<h3> Server Side IP Address </h3><br>
<%@page import="java.net.InetAddress;" %>
<%String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName());%><br>
<%out.println("Server IP Address :: "+ip);%>

<h3> Client Side IP Address </h3><br>
<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %><br>
<%out.print( "Client Name Host :: "+ request.getRemoteHost() );%><br> 
