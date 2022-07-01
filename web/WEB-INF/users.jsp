
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
    </head>
    <body>
        
  <c:if test="${selectedAcc != null}">
            <h2>Add User</h2>
            <form method="POST" action="user">
                <div>
                    <input type="email" name="emailADD" value="${emailATTAdd}" placeholder = "Email">
                    <br>
                    <input type="text" name="fNameADD" value="${fNameATTAdd}" placeholder="First Name">
                    <br>
                    <input type="text" name="lNameADD" value="${lNameATTAdd}" placeholder = "Last Name">
                    <br>
                    <input type="password" name="passwordADD" value="${passwordATTAdd}" placeholder = "Password">
                    <br>
                    <select style="height:22px;width:175px;margin-top:5px" name="roleADD">
                        <option value = "1">system admin</option>
                        <option value = "2">regular user</option>
                        <option value = "3">company admin</option> 
                    </select>
                    <br>
                    <select style="height:22px;width:175px;margin-top:5px" name="activeADD">
                        <option value = "true">Active</option>
                        <option value = "false">Not Active</option>
                    </select>
                    <br>
                    <input type="hidden" name="actionADD" value="save">
                    <input  style="height:21px;width:176px;margin-top:5px" type="submit" value="Save">
                </div>
            </form>
        </c:if>
    </div>
    <h2>Manage User</h2>
    <table border="1" cellpadding="5">
        <tr>
            <th>Email</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Role</th>
            <th>Active</th>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${users.getEmail}</td>
                <td>${users.getFirstname}</td>
                <td>${users.getLastname}</td>
                <td>${users.getRole}</td>
                <td>${users.isActive}</td>
                <td>
                    <a href="<c:url value="/account">
                           <c:param name="username" value="${account.username}" />
                       </c:url>">View</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <c:if test="${selectedAcc != null}">
        <h2>Edit User</h2>
        <form method="POST" action="user">
            <div>
                <input type="email" name="emailEdit" value="${emailATTEdit}" placeholder = "Email">
                <br>
                <input type="text" name="fNameEdit" value="${fNameATTEdit}" placeholder="First Name">
                <br>
                <input type="text" name="lNameEdit" value="${lNameATTEdit}" placeholder = "Last Name">
                <br>
                <select style="height:21px;width:175px;margin-top:5px" name="roleEdit">
                    <option value = "1">system admin</option>
                    <option value = "2">regular user</option>
                    <option value = "3">company admin</option> 
                </select>
                <br>
                <select style="height:22px;width:175px;margin-top:5px" name="activeEdit" >
                    <option value = "true">Active</option>
                    <option value = "false">Not Active</option>
                </select>
                <br>
                <input type="hidden" name="actionEdit" value="edit">
                <input style="height:21px;width:176px;margin-top:5px" type="submit" value="Edit">
            </div>
        </form>
    </form>
    <form action="user" method="POST">
        <input type="hidden" name="action" value="delete">
        <input  style="height:21px;width:176px;margin-top:5px" type="submit" value="Delete">
    </form>
</c:if>
    </body>
</html>
