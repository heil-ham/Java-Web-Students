package com.example.javaweb;

public class Students {
    private String studentId;
    private String departement;
    private String name;
    private Integer mark;

    public Students() {

    }
    public Students(String studentId, String departement, String name, Integer mark) {
        this.studentId = studentId;
        this.departement = departement;
        this.name = name;
        this.mark = mark;
    }

    public String getStudentId() {
        return this.studentId;
    }
    public String getDepartement() {
        return this.departement;
    }
    public String getName() {
        return this.name;
    }
    public Integer getMark() {
        return this.mark;
    }
}
