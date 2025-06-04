package net.vuonnala;

public class Cow {
    Wordlist wordlist;

    public Cow(){
        wordlist = new Wordlist();
    }

    public void say(){
        StringBuilder sb = new StringBuilder();
        sb.append("((...))\n");
        sb.append("( o o )\n");
        sb.append(" \\   /\n");
        sb.append("  ^_^        ");
        sb.append(wordlist.getRandomWordFromList()).append("\n");

        System.out.println(sb.toString());
    }
}
