package br.com.fatecpg.projeto3;

public class musica {
     private String nome;
     private String genero;
     private String Ano;

    public musica(String nome, String genero, String Ano) {
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
