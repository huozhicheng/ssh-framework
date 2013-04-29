<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head><title>H-Blog Error Page</title></head>
<body>
    <h3>Exception:</h3>
    <font color="ff0000">
		<s:fielderror/>
	</font>
	<a href="<%=request.getContextPath()%>/">Go back to the home page.</a>
    <s:property value="exception"/>

    <h3>Stack trace:</h3>
    <pre>
        <s:property value="exceptionStack"/>
    </pre>
</body>
</html>