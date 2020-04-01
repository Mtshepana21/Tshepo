package io.jumpco.demo.todo.model;

public enum TodoType {

    TASK("Task"),
    BUG("Bug"),
    FEATURE("Feature"),
    ENHANCEMENT("Enhancement"),
    MAINTENANCE("Maintenance");

    private String name;
    TodoType(String name){
        this.name = name;
    }
    public String getName(){
        return name;
    }
}

