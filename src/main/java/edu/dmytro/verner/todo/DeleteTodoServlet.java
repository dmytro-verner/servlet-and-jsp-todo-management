package edu.dmytro.verner.todo;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/delete-todo")
public class DeleteTodoServlet extends HttpServlet {

    private TodoService todoService = new TodoService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        todoService.deleteById(Integer.parseInt(req.getParameter("todoId")));

        resp.sendRedirect("/list-todos");
    }
}
