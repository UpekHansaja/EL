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
        <title>EL - Expression Language</title>

        <style>
            body{
                height: 90vh;
                font-family: sans-serif;
                background-color: #022a37;
                color: wheat;
            }
        </style>
    </head>
    <body>

        <%-- Easy Implementaoin --%> 
        <%
            pageContext.setAttribute("x","This is the Value of X");
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


        <%-- Find Attributes From Page Context --%> 

        <!--not using much (only for knowledge purpose)-->
        <h1>${pageContext.findAttribute("x")}</h1>


        <%-- Access Parameters From Request --%>

        <!--request URL http://127.0.0.1:8080/EL/X--> 
        <h1>${param.name}</h1>


        <%-- Access Cookies --%>

        <h1><%= "Cookie :" %> ${cookie.JSESSIONID}</h1>
        <h1><%= "Cookie Name :" %> ${cookie.JSESSIONID.name}</h1>
        <h1><%= "Cookie Value :" %> ${cookie.JSESSIONID.value}</h1>
        <h1><%= "Cookie Max Age :" %> ${cookie.JSESSIONID.maxAge}</h1>
        <!--In above JSESSIONID is the name of the Cookie-->


        <h1>${header.host}</h1>

        <!-- Servlet Context eke set kerana parameters ganna kathawa--> 
        <h1>${initParam.x}</h1>


        <!--In Practical Appliances-->
        <h1>${requestScope.x}</h1>
        <h1>${sessionScope.x}</h1>
        <h1>${applicationScope.x}</h1>
        <h1>${param.name}</h1>
        <h1>${cookie.JSESSIONID.value}</h1>

        <%
//            User u = (User) request.getAttribute("user");
//            out.write(u.getMobile());
        %>

        <h1>${requestScope.user.id}</h1>
        <h1>${requestScope.user.mobile}</h1>
        <h1>${requestScope.user.mobile}</h1>
        
        
    </body>
</html>
