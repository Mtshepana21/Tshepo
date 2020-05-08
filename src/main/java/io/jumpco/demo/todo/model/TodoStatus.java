package io.jumpco.demo.todo.model;

public enum TodoStatus {

    READY("Ready"),
    IN_PROGRESS("In_progress"),
    DONE("Done");

    private String name;
    TodoStatus(String name){
        this.name = name;
    }
    public String getName(){
        return name;
    }
}
