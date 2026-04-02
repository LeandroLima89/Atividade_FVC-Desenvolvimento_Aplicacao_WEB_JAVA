/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tadaw_questao_49;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author leo
 */

@ManagedBean(name = "conversaoBean")
@SessionScoped

public class ConversaoBean {
    private Integer limiteInferior;
    private Integer limiteSuperior;
    private Integer decremento;
    private java.util.List<String> tabela;

    public Integer getLimiteInferior() {
        return limiteInferior;
    }

    public void setLimiteInferior(Integer limiteInferior) {
        this.limiteInferior = limiteInferior;
    }

    public Integer getLimiteSuperior() {
        return limiteSuperior;
    }

    public void setLimiteSuperior(Integer limiteSuperior) {
        this.limiteSuperior = limiteSuperior;
    }

    public Integer getDecremento() {
        return decremento;
    }

    public void setDecremento(Integer decremento) {
        this.decremento = decremento;
    }

    public java.util.List<String> getTabela() {
        return tabela;
    }

    public void setTabela(java.util.List<String> tabela) {
        this.tabela = tabela;
    }
    
    public void calcular() {
        tabela = new java.util.ArrayList<>();
        if (limiteInferior != null && limiteSuperior != null && decremento != null && decremento > 0) {
            for (int c = limiteSuperior; c >= limiteInferior; c -= decremento) {
                double f = (9.0/5.0) * c + 32;
                tabela.add(c + " °C = " + f + " °F");
            }
        }
    }
}
