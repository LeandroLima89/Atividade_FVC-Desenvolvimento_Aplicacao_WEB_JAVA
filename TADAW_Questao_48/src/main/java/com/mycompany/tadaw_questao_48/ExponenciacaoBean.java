/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tadaw_questao_48;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author leo
 */

@ManagedBean(name = "exponenteBean")
@SessionScoped
public class ExponenciacaoBean {
    
    private Integer base;
    private Integer expoente; 
    private String resultado;
    
    public Integer getBase() {
        return base;
    }

    public void setBase(Integer base) {
        this.base = base;
    }

    public Integer getExpoente() {
        return expoente;
    }

    public void setExpoente(Integer expoente) {
        this.expoente = expoente;
    }

    public String getResultado() {
        return resultado;
    }

    public void setResultado(String resultado) {
        this.resultado = resultado;
    }
    
 
    public void calcular() {
        if (base != null && expoente != null && base>= 2 && expoente > 1) {
            resultado = String.valueOf(Math.pow(base, expoente));
        } else {
            resultado = "Valores inválidos. base ≥ 2 e expoente > 1.";
        }
    }
}
