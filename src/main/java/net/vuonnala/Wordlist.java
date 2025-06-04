package net.vuonnala;


import java.util.Random;

public class Wordlist {
    public final String [] list = {"Moo", "Mooooooo", "moo", };
    Random r;
    public Wordlist(){
        r = new Random();
    }

    public String getRandomWordFromList(){
        return list[r.nextInt(list.length)];
    }
}
