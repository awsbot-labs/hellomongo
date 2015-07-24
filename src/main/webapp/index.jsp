<%@ page language="java" import="java.util.*,com.mongodb.*" pageEncoding="UTF-8"%>

<html>
<body>
<h2>Hello World!</h2>
<p>MongoDB Database names:</p>
<%
MongoClient mongo = new MongoClient( "localhost" , 27017 );
List<String> dbs = mongo.getDatabaseNames();
for(String db : dbs){
	%><p><%=db%></p><%
}
%>
</body>
</html>
