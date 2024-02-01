package com.beathackers.linecomparision.view;

import com.beathackers.linecomparision.models.Line;

import java.io.PrintStream;

public class LineComparisionMachine {
    Line line1;
    Line line2;
    public LineComparisionMachine() {
        this.line1 = new Line();
        this.line2 = new Line();
    }

    public void compare() {
        if (this.line1.length() > this.line2.length()){
            System.out.println("Line 1 is longer than Line 2.");
        } else if (this.line2.length() > this.line1.length()) {
            System.out.println("Line 2 is longer than Line 1.");
        } else {
            System.out.println("Both the lines are equal in length.");
        }
    }
}
