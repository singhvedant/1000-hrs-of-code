package com.beathackers.linecomparision.controller;

import com.beathackers.linecomparision.models.Line;

public class LineComparision {

    Line a;
    Line b;

    public LineComparision(Line a, Line b) {
        System.out.println("Enter for line 1:");
        this.a = new Line();
        System.out.println("Enter for line 2:");
        this.b = new Line();
    }

    public void bigger() {
        if (this.a.length() == this.b.length()) {
            System.out.println("Both lines are same length");
        } else if (this.a.length() > this.b.length()) {
            System.out.println("First line is bigger.");
        } else {
            System.out.println("Second line is bigger.");
        }
    }

    public void smaller() {
        if (this.a.length() == this.b.length()) {
            System.out.println("Both lines are same length");
        } else if (this.a.length() < this.b.length()) {
            System.out.println("First line is smaller.");
        } else {
            System.out.println("Second line is smaller.");
        }
    }
}
