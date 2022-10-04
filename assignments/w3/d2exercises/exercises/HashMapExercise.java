package com.revature.exercises;

import java.util.HashMap;

public class HashMapExercise {

    /*
    Below is a list of exercises to help you get familiar with working with the HashMap Collection
     */
    public static void main(String[] args) {

        // 1. Create a HashMap with Integers for the Keys and Strings for the Entries. Insert 5 entries with numbers as
        // the key and colors as the value associated
        HashMap<Integer, String> people = new HashMap<Integer, String>();
        people.put(22, "Noah");
        people.put(26, "Ian");
        people.put(17, "Dylan");
        people.put(27, "Brandon");
        people.put(60, "Gabby");
        System.out.println(people);
        // 2. Write a Java program to count the number of key-value (size) mappings in a map.
        System.out.println(people.size());
        // 3. Write a Java program to test if a map contains a mapping for the specified key
        System.out.println(people.containsKey(27));
        // 4. Write a Java program to get the value of a specified key in a map.
        System.out.println(people.get(60));
        // 5. Write a Java program to get a set view of the keys contained in this map.
        System.out.println(people.keySet());
    }
}
