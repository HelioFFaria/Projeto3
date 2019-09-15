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
public class disco {
    private String nomeDisco;
    private String nomeGravadora;
    private String dataDisco; 
    
     public disco (String nomeDisco, String nomeGravadora,String dataDisco){
     this.nomeDisco = nomeDisco;
     this.nomeGravadora = nomeGravadora;
     this.dataDisco = dataDisco;
     }

    public String getNomeDisco() {
        return nomeDisco;
    }

    public void setNomeDisco(String nomeDisco) {
        this.nomeDisco = nomeDisco;
    }

    public String getNomeGravadora() {
        return nomeGravadora;
    }

    public void setNomeGravadora(String nomeGravadora) {
        this.nomeGravadora = nomeGravadora;
    }

    public String getDataDisco() {
        return dataDisco;
    }

    public void setDataDisco(String dataDisco) {
        this.dataDisco = dataDisco;
    }
}
