<<<<<<< HEAD
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.projeto3;

import java.util.ArrayList;

/**
 *
 * @author helio
 */
public class dbBanda {
    private static ArrayList<banda> banda;   
   
    public static ArrayList<banda> getBanda(){
         if ( banda == null){
            banda = new ArrayList<> ();
            banda.add(new banda("Pink Floyd","Rock","1965"));
            banda.add(new banda("legião Urbana","Rock","1982"));
            banda.add(new banda("Rosa de Saron","Rock Cristão","1988"));
            banda.add(new banda(" Red Hot Chili Peppers","Funk Rock","1999"));
            
}
         return banda;
}
public static void addBanda(banda c){
     getBanda().add(c);
}
public static void setBanda(int index, banda c){
     getBanda().set(index,c);
}
public static void removeBanda(int index){
     getBanda().remove(index);
}  
}

=======
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.projeto3;

import java.util.ArrayList;

/**
 *
 * @author helio
 */
public class dbBanda {
    private static ArrayList<banda> banda;   
   
    public static ArrayList<banda> getBanda(){
         if ( banda == null){
            banda = new ArrayList<> ();
            banda.add(new banda("Pink Floyd","Rock","1965"));
            banda.add(new banda("legião Urbana","Rock","1982"));
            banda.add(new banda("Rosa de Saron","Rock Cristão","1988"));
            banda.add(new banda(" Red Hot Chili Peppers","Funk Rock","1999"));
            
}
         return banda;
}
public static void addBanda(banda c){
     getBanda().add(c);
}
public static void setBanda(int index, banda c){
     getBanda().set(index,c);
}
public static void removeBanda(int index){
     getBanda().remove(index);
}  
}

>>>>>>> c7521421bf8bcd391d0e136ea60bffc15558572d
