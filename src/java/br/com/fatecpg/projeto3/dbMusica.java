package br.com.fatecpg.projeto3;

import java.util.ArrayList;

public class dbMusica {
   private static ArrayList<musica> musica;   
   
    public static ArrayList<musica> getMusica(){
         if ( musica == null){
            musica = new ArrayList<> ();
            musica.add(new musica("Closer","Pop","2019"));
            musica.add(new musica("Tremor","Eletronica","2014"));
            musica.add(new musica("radioactive ","Rock","2012"));
            musica.add(new musica("Chop Suey","Rock","2001"));
            
}
         return musica;
}
public static void addMusica(musica c){
     getMusica().add(c);
}
public static void setMusica(int index, musica c){
     getMusica().set(index,c);
}
public static void removeMusica(int index){
     getMusica().remove(index);
}   
}
