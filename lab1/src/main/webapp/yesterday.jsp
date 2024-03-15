<%--
  Created by IntelliJ IDEA.
  User: Karol
  Date: 08.03.2024
  Time: 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<%@taglib uri="jakarta.tags.fmt" prefix="fmt"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Yesterday</title>
    <style type="text/css">
        body { background: ${bean.backgroundColor};
            color: ${bean.foregroundColor};
            border:${bean.border}
        }
    </style>
</head>
<body>
<h2>Yesterday</h2>

Yesterday,<br/>
All my troubles seemed so far away,<br/>
Now it looks as though they're here to stay,<br/>
Oh, I believe in yesterday.<br/>
<br/>
Suddenly,<br/>
I'm not half the man I used to be,<br/>
There's a shadow hanging over me,<br/>
Oh, yesterday came suddenly.<br/>
<br/>
Why she<br/>
Had to go I don't know, she wouldn't say.<br/>
I said,<br/>
Something wrong, now I long for yesterday.<br/>

<p>
    Released: <fmt:formatDate value="${releaseDate}" type="date" dateStyle="default"/>
</p>
<c:if test="${!empty members}">
    <table border="${bean.border}">
        <tr><th>The Beatles</th></tr>
        <c:forEach var="member" items="${members}">
            <tr><td>${member}</td></tr>
        </c:forEach>
    </table>
</c:if>

<a href="yesterday.html">Back</a>
</body>
</html>

