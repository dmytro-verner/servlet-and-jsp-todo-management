<%@include file="../common/header.jspf"%>
<%@include file="../common/navigation.jspf"%>

<div class="container">
    <p>Your new todo is:</p>
    <form action="/add-todo" method="post">
        <fieldset class="form-group">
            <label>Description:</label>
            <input type="text" name="todo" class="form-control"><br/>
        </fieldset>
        <fieldset>
            <label>Category:</label>
            <input type="text" name="category" class="form-control"><br/>
        </fieldset>
        <input type="submit" value="Add" class="btn btn-success">
    </form>
</div>

<%@include file="../common/footer.jspf"%>