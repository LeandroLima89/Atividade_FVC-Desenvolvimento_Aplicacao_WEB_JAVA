/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tadaw_questao_54;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author leo
 */

@ManagedBean(name = "pesquisaBean")
@SessionScoped

public class PesquisaBean {
    private int[] idades = new int[10000];
    private int[] opinioes = new int[10000]; // 1=Regular, 2=Bom, 3=Excelente

    private double mediaIdadeExcelente;
    private int qtdRegular;
    private double percExcelente;
    private double percBom;
    private double percRegular;
    
    public void carregarDados() {
        // Simula os 10.000 espectadores
        for (int i = 0; i < 10000; i++) {
            idades[i] = 10 + (int)(Math.random() * 60); // idade entre 10 e 70
            opinioes[i] = 1 + (int)(Math.random() * 3); // 1, 2 ou 3
        }
    }

    public double getMediaIdadeExcelente() {
        return mediaIdadeExcelente;
    }

    public int getQtdRegular() {
        return qtdRegular;
    }

    public double getPercExcelente() {
        return percExcelente;
    }

    public double getPercBom() {
        return percBom;
    }

    public double getPercRegular() {
        return percRegular;
    }
    
    public void calcularResultados() {
        int somaIdadesExcelente = 0;
        int qtdExcelente = 0;
        qtdRegular = 0;
        int qtdBom = 0;

        for (int i = 0; i < 10000; i++) {
            if (opinioes[i] == 3) {
                somaIdadesExcelente += idades[i];
                qtdExcelente++;
            } else if (opinioes[i] == 1) {
                qtdRegular++;
            } else if (opinioes[i] == 2) {
                qtdBom++;
            }
        }

        mediaIdadeExcelente = qtdExcelente > 0 ? (double) somaIdadesExcelente / qtdExcelente : 0;
        percExcelente = (qtdExcelente * 100.0) / 10000;
        percBom = (qtdBom * 100.0) / 10000;
        percRegular = (qtdRegular * 100.0) / 10000;
    }
}
