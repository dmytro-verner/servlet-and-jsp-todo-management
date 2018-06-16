<%@include file="../common/header.jspf" %>
<%@include file="../common/navigation.jspf" %>

<div class="container">
    <h1>Welcome ${name}</h1>
    Your todos are:
    <table class="table table-striped">
        <thead>
        <th>Description</th>
        <th>Category</th>
        <th>Actions</th>
        </thead>
        <tbody>
        <c:forEach items="${todos}" var="todo">
            <tr>
                <td>${todo.name}</td>
                <td>${todo.category}</td>
                <td>
                    <form action="/delete-todo?todoId=${todo.id}&category=${todo.category}" method="post"
                          style='display:inline;'>
                        <input type="submit" value="Delete" class="btn btn-danger"/>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="/add-todo" class="btn btn-success">Add New Todo</a>
</div>

<%@include file="../common/footer.jspf" %>