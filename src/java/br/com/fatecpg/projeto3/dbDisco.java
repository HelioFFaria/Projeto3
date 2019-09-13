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
public class dbDisco {
    private static ArrayList<disco> discos;
    public  static ArrayList<disco> getdisco(){
         if (discos == null){
            discos = new ArrayList<>();
            discos.add(new disco("Horizonte Distante","Som Livre","10/08/2012"));
            discos.add (new disco("Depois do Inverno","Som Livre","01/04/2005"));
            discos.add(new disco("Angústia Suprema","Som Livre","15/06/2001"));
        }
    return discos;
    }
        public static void adddisco(disco d) {
        getdisco().add(d);
    }
    public static void setdisco(int index,disco d) {
        getdisco().set(index, d);
    }
    public static void removedisco(int index){
        getdisco().remove(index); 
    }
} 