/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tadaw_questao_46;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author leo
 */

@ManagedBean(name = "numeroBean")
@SessionScoped

public class NumerosBean {
    private Integer[] numeros = new Integer[5]; // apenas 5 para testar
    private String numerosGeral;
    private String positivos;

    public Integer[] getNumeros() {
        return numeros;
    }

    public void setNumeros(Integer[] numeros) {
        this.numeros = numeros;
    }

    public String getNumerosGeral() {
        return numerosGeral;
    }

    public String getPositivos() {
        return positivos;
    }

    public void processar() {
        // Todos os números
        numerosGeral = "";
        for (Integer n : numeros) {
            numerosGeral = numerosGeral + n + " ";
        }

        // Apenas positivos
        positivos = "";
        for (Integer n : numeros) {
            if (n != null && n >= 0) {
                positivos = positivos + n + " ";
            }
        }
    }
}
