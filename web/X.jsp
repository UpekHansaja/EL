<%-- 
    Document   : X
    Created on : Aug 13, 2024, 2:15:22 PM
    Author     : upekhansaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%-- Easy Implementaoin --%> 
        <%
            pageContext.setAttribute("x","10");
        %>

        <h1>
            <% 
                out.write(pageContext.getAttribute("x").toString());
            %>
        </h1>

        <h1>
            <%=
                pageContext.getAttribute("x").toString()
            %>
        </h1>

        <h1>
            ${pageScope.x}
        </h1>

        <%-- Access In Any Scope --%> 

        <h1>${pageScope.x}</h1>

        <h1>${requestScope.x}</h1>

        <h1>${sessionScope.x}</h1>

        <h1>${applicationScope.x}</h1>

    </body>
</html>
