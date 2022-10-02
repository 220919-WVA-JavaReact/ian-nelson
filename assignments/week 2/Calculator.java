package com.revature.calculator;
import java.util.Scanner;

public class Calculator {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        boolean running = true;
        double number1;
        double number2;
        char operator;
        double result;
        char runAgain;

        /*
        System.out.println("Please enter in your first number");
        number1 = input.nextDouble();

        System.out.println("Please enter in +, -, *, or /");
        operator = input.next().charAt(0);

        System.out.println("Please enter in your second number");
        number2 = input.nextDouble();

        */

        //next we will perform the operation
        // i havent used switch cases at all in this course personally, so i will try to use one here


        //so i want to make the calculator loop
        //to do that a boolean seems to work best
        //ill make it initially true, then reassign it to true at the end of the program
        // maybe ask a question to see if they want to run the program again
        while (running) {
            System.out.println("Please enter in your first number");
            number1 = input.nextDouble();

            System.out.println("Please enter in +, -, *, or /");
            operator = input.next().charAt(0);

            System.out.println("Please enter in your second number");
            number2 = input.nextDouble();

            switch (operator) {
                case '+':
                    result = (number1 + number2);
                    System.out.println(result);
                    break;
                case '-':
                    result = (number1 - number2);
                    System.out.println(result);
                    break;
                case '*':
                    result = (number1 * number2);
                    System.out.println(result);
                    break;
                case '/':
                    result = (number1 / number2);
                    System.out.println(result);
                    break;
            }
            System.out.println("Would you like to run again?");
            System.out.println("Enter 'y' or 'n'");
            runAgain = input.next().charAt(0);

            if (runAgain == 'y') {
                running = true;
            } else {
                return;
            }
        }

    }
}
