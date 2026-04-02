/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tadaw_questao_47;

import javax.faces.bean.ManagedBean;
import javax.inject.Named;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author leo
 */

@SessionScoped
@ManagedBean(name ="metadeBean")
public class MetadeBean {
    private Integer[] numeros = new Integer[10]; 
    private String resultados;

    public Integer[] getNumeros() {
        return numeros;
    }

    public void processar() {
        resultados = "";
        for (Integer n : numeros) {
            if (n != null) {
                resultados += (n / 2) + " ";
            }
        }
    }

    public String getResultados() {
        return resultados;
    }
}
