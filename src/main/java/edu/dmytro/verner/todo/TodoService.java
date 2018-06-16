package edu.dmytro.verner.todo;

import java.util.ArrayList;
import java.util.List;

public class TodoService {

    private static List<Todo> todos = new ArrayList<>();

    static{
        todos.add(new Todo("Learn AWS", "Study"));
        todos.add(new Todo("Learn React", "Study"));
        todos.add(new Todo("Learn JPA", "Study"));
    }

    public List<Todo> retrieveTodos(){
        return todos;
    }

    public void addTodo(Todo todo){
        todos.add(todo);
    }

    public void deleteById(int id){
        todos.removeIf(t -> t.getId() == id);
    }
}
