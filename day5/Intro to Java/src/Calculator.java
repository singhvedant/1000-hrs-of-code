import java.util.Scanner;

public class Calculator {
    static int num1;
    static int num2;
    
    Calculator() {
        Scanner myObj = new Scanner(System.in);
        System.out.println("Enter first number:");
        num1 = Integer.parseInt(myObj.nextLine());
        System.out.println("Enter second number:");
        num2 = Integer.parseInt(myObj.nextLine());
    }

    public static String add () {
        int i = num1 + num2;
        return Integer.toString(i);
    }

    public static String sub () {
        int i = num1 - num2;
        return Integer.toString(i);
    }

    public static String mul () {
        int i = num1 * num2;
        return Integer.toString(i);
    }

    public static String div () {
        int i = num1 / num2;
        return Integer.toString(i);
    }

    public static String mod () {
        int i = num1 % num2;
        return Integer.toString(i);
    }
}
