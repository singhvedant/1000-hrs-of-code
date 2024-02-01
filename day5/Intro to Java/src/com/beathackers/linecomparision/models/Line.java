package com.beathackers.linecomparision.models;

public class Line {
    Point a;
    Point b;

    public Line() {
        System.out.println("Enter for Point one of this line:");
        this.a = new Point();
        System.out.println("Enter for Point 2 of this line:");
        this.b = new Point();
        System.out.println();
    }

    public double length() {
        return Math.sqrt((a.x - b.x)*(a.x - b.x) + (a.y - b.y)*(a.y - b.y));
    }
}
