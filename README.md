# EL - Expression Language


## `${somethingHere}`

Expression Language (EL) in Java is a powerful feature used primarily in Java EE (Enterprise Edition) technologies like JavaServer Faces (JSF) and JavaServer Pages (JSP). It allows you to embed expressions directly in web pages to interact with application logic, making it easier to bind UI components to backend data and methods.

```java

${value}

```

1. **Purpose**: EL enables the presentation layer (web pages) to communicate with the application logic (managed beans). This is particularly useful for dynamically accessing and manipulating data within web applications¹.

2. **Syntax**: EL expressions are typically enclosed in `${}` for immediate evaluation or `#{}` for deferred evaluation. Immediate evaluation happens when the page is rendered, while deferred evaluation occurs when the value is needed, such as during form submission¹.

3. **Usage**: EL can be used to access JavaBeans properties, invoke methods, perform arithmetic operations, and manipulate collections. For example, `${user.name}` can be used to access the `name` property of a `user` bean².

4. **Integration**: EL is integrated with several Java EE technologies, including JSF, JSP, and Contexts and Dependency Injection (CDI). This integration allows for seamless data binding and method invocation within web applications².

5. **Evolution**: Originally part of the JavaServer Pages Standard Tag Library (JSTL), EL has evolved to become a standalone feature used across various Java EE technologies⁴.

---

## Usage

 Here are some examples of how to use Expression Language (EL) in Java, particularly within JavaServer Pages (JSP) and JavaServer Faces (JSF).

### Example 1: Accessing JavaBeans Properties in JSP

Let's say you have a JavaBean named `User` with a property `name`.

**User.java:**
```java
public class User {
    private String name;

    public User() {}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
```

**index.jsp:**
```jsp
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>EL Example</title>
</head>
<body>
    <jsp:useBean id="user" class="com.example.User" scope="session"/>
    <c:set target="${user}" property="name" value="John Doe"/>
    <h1>Welcome, ${user.name}!</h1>
</body>
</html>
```

In this example, the `name` property of the `user` bean is set to "John Doe" and then accessed using `${user.name}`.

### Example 2: Using EL in JSF

In JSF, EL is used to bind UI components to managed bean properties.

**UserBean.java:**
```java
import javax.faces.bean.ManagedBean;

@ManagedBean
public class UserBean {
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
```

**index.xhtml:**
```xml
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://xmlns.jcp.org/jsf/html">
<head>
    <title>EL Example</title>
</head>
<body>
    <h:form>
        <h:outputLabel for="name" value="Name: " />
        <h:inputText id="name" value="#{userBean.name}" />
        <h:commandButton value="Submit" action="#{userBean.submit}" />
    </h:form>
    <h:outputText value="Welcome, #{userBean.name}!" />
</body>
</html>
```

In the above JSF example, the `name` property of the `UserBean` is bound to an input field and displayed using `#{userBean.name}`.

### Example 3: Performing Operations

EL can also perform operations and access collections.

**index.jsp:**

```jsp
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL Operations Example</title>
</head>
<body>
    <c:set var="number" value="10"/>
    <p>Number: ${number}</p>
    <p>Number + 5: ${number + 5}</p>
    <p>Number * 2: ${number * 2}</p>
    <p>Number is greater than 5: ${number > 5}</p>
</body>
</html>
```

In the above example, EL is used to perform arithmetic operations and comparisons.

***

Futhermore here are some examples of how EL is used in a Java web application?

¹: [Oracle Java EE 6 Tutorial](https://docs.oracle.com/javaee/6/tutorial/doc/gjddd.html)
²: [Oracle Java EE 7 Tutorial](https://docs.oracle.com/javaee/7/tutorial/jsf-el.htm)
⁴: [Wikipedia - Jakarta Expression Language](https://en.wikipedia.org/wiki/Jakarta_Expression_Language)
