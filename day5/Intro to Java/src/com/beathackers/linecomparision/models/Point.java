package com.beathackers.linecomparision.models;

import java.util.Scanner;

public class Point {
    public int x;
    public int y;

    Point () {
        Scanner input = new Scanner(System.in);
        System.out.println("Enter X and Y for this point:");
        this.x = input.nextInt();
        this.y = input.nextInt();
    }
}
