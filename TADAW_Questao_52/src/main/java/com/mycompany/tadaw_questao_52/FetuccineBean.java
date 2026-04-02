/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tadaw_questao_52;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author leo
 */
@ManagedBean(name = "fetuccineBean")
@SessionScoped

public class FetuccineBean {

    private Integer primeiro;
    private Integer segundo;
    private Integer[] serie;

    public Integer getPrimeiro() {
        return primeiro;
    }

    public void setPrimeiro(Integer primeiro) {
        this.primeiro = primeiro;
    }

    public Integer getSegundo() {
        return segundo;
    }

    public void setSegundo(Integer segundo) {
        this.segundo = segundo;
    }

    public Integer[] getSerie() {
        return serie;
    }

    public void setSerie(Integer[] serie) {
        this.serie = serie;
    }

    public void gerarFetuccine() {
        serie = new Integer[10];
        if (primeiro != null && segundo != null) {
            serie[0] = primeiro;
            serie[1] = segundo;
            for (int i = 2; i < 10; i++) {
                int posicao = i + 1;
                if (posicao % 2 != 0) { // posição impar -- soma  
                    serie[i] = serie[i - 1] + serie[i - 2];
                } else {                // posição par -- subtrai
                    serie[i] = serie[i - 1] - serie[i - 2];
                }
            }
        }
    }
}
