/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tadaw_questao_50;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author leo
 */

@ManagedBean(name = "fibonacciBean")
@SessionScoped

public class FibonacciBean {

    private Integer quantidade;
    private Integer[] serie;

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }

    public Integer[] getSerie() {
        return serie;
    }

    public void setSerie(Integer[] serie) {
        this.serie = serie;
    }

    public void gerarFibonacci() {
        if (quantidade != null && quantidade > 0) {
            serie = new Integer[quantidade];
            int a = 0; 
            int b = 1;
            serie[0] = a;
            if (quantidade > 1) {
                serie[1] = b;
            }
            for (int i = 2; i < quantidade; i++) {
                int c = a + b;
                serie[i] = c;
                a = b;
                b = c;
            }
        }
    }

}
