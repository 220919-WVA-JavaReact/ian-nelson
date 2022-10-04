package com.revature.exercises;

import java.util.HashSet;

public class HashSetExercise {

    /*
    Below is a list of exercises to help you get familiar with working with the HashSet Collection
     */
    public static void main(String[] args) {

        HashSet<String> food = new HashSet<String>();
        food.add("Pizza");
        food.add("Oatmeal");
        food.add("Almonds");

        // 1. Write a Java program to append the specified element to the end of a hash set
        food.add("Chicken");
        System.out.println(food);



        // 2. Write a Java program to iterate through all elements in a hash list.

        for (String fun : food) {
            System.out.println(fun + " ");
        }

        // 3. Write a Java program to get the number of elements in a hash set
        System.out.println(food.size());


        // 4. Write a Java program to test a hash set is empty or not
        System.out.println(food.isEmpty());


        // 5. Write a Java program to convert a hash set to an array.
        String[] hashArray = new String[food.size()];
        food.toArray(hashArray);
        for(String displayArray : hashArray) {
            System.out.println(displayArray);
        }

    }
}
