package com.revature.exercises;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

public class LinkedListExercise {

    /*
  Below is a list of exercises to help you get familiar with working with the ArrayList Collection
   */
    public static void main(String[] args) {

        LinkedList<String> pokemon = new LinkedList<String>();
        pokemon.add("Kadabra");
        pokemon.add("Sandslash");
        pokemon.add("Swampert");
        pokemon.add("Totodile");
        System.out.println(pokemon);

        // 1. Write a Java program to append the specified element to the end of a linked list. Add several values.
        pokemon.addLast("Lucario");
        pokemon.addLast("Pikachu");
        pokemon.addLast("Cyndaquil");
        System.out.println(pokemon);

        // 2. Write a Java program to iterate through all elements in a linked list.
        for (int i = 0; i < pokemon.size(); i++){
            System.out.println(pokemon.get(i));
        }


        // 3. Write a Java program to iterate a linked list in reverse order

        for (int i = pokemon.size() - 1; i >= 0; i--){
            System.out.println(pokemon.get(i));
        }

        // 4.  Write a Java program to insert the specified element at the front of a linked list
        pokemon.offerFirst("Mew");
        System.out.println(pokemon);

        // 5. Write a Java program to insert some elements at the specified position into a linked list.
        pokemon.add(3, "Volcarona");
        System.out.println(pokemon);
        // 6. Write a Java program to get the first and last occurrence of the specified elements in a linked list.
        System.out.println(pokemon.getFirst());
        System.out.println(pokemon.getLast());
        // 7. Write a Java program to check if a particular element exists in a linked list.
        System.out.println(pokemon.contains("Volcarona"));
        // 8. Write a Java program to convert a linked list to array list.

        List<String> pokemonAL = new ArrayList<String>(pokemon);
        System.out.println(pokemonAL);

    }
}

