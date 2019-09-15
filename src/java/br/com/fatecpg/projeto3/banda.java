/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.projeto3;

/**
 *
 * @author helio
 */
public class banda {
     private String nome;
     private String genero;
     private String Ano;

    public banda(String nome, String genero, String Ano) {
        this.nome = nome;
        this.genero = genero;
        this.Ano = Ano;
    }
   
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getAno() {
        return Ano;
    }

    public void setAno(String Ano) {
        this.Ano = Ano;
    }
     
  
}

