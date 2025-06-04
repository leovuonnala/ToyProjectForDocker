package net.vuonnala;

public class Cow {
    Wordlist wordlist;

    public Cow(){
        wordlist = new Wordlist();
    }

    public void say(){
        System.out.println(wordlist.getRandomWordFromList());
    }
}
