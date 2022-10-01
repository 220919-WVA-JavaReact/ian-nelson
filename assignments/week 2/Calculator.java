package com.revature.calculator;
import java.util.Scanner;

public class Calculator {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        double number1;
        double number2;
        char operator;
        double result;

        System.out.println("Please enter in your first number");
        number1 = input.nextDouble();

        System.out.println("Please enter in +, -, *, or /");
        operator = input.next().charAt(0);

        System.out.println("Please enter in your second number");
        number2 = input.nextDouble();

        //next we will perform the operation
        // i havent used switch cases at all in this course personally, so i will try to use one here

        switch (operator) {
            case '+':   result = (number1 + number2);
                        System.out.println(result);
                        break;
            case '-':   result = (number1 - number2);
                        System.out.println(result);
                        break;
            case '*':   result = (number1 * number2);
                        System.out.println(result);
                        break;
            case '/':   result = (number1 / number2);
                        System.out.println(result);
                        break;
        }
        input.close();
    }
}
