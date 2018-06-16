<%@include file="../common/header.jspf"%>

<nav class="navbar navbar-default">
    <a href="/" class="navbar-brand">Brand</a>

    <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="/list-todos">Todos</a></li>
    </ul>
</nav>

<div class="container">
    <form action="/login" method="post">
        <p><font color="red">${errorMessage}</font></p>
        Enter your name: <input type="text" name="name">
        Password: <input type="password" name="password">
        <input type="submit" value="Login" class="btn btn-success">
    </form>
</div>

<%@include file="../common/footer.jspf"%>