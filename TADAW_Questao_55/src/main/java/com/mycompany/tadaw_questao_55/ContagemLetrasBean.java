/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tadaw_questao_55;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author leo
 */

@ManagedBean(name = "contagemLetras")
@SessionScoped

public class ContagemLetrasBean {

    private String[] mensagens = new String[10]; // até 10 mensagens
    private int indice = 0; // controla posição atual
    private int totalAs;

    public String[] getMensagens() {
        return mensagens;
    }

    public void setMensagens(String[] mensagens) {
        this.mensagens = mensagens;
    }

    public int getIndice() {
        return indice;
    }

    public void setIndice(int indice) {
        this.indice = indice;
    }

    public int getTotalAs() {
        return totalAs;
    }

    public void setTotalAs(int totalAs) {
        this.totalAs = totalAs;
    }

    public void adicionarMensagem(String msg) {
        if (indice < 10) {
            mensagens[indice] = msg;
            indice++;
        }
    }
    
    public void contarAs() {
        totalAs = 0;
        for (int i = 0; i < indice; i++) {
            String msg = mensagens[i];
            for (int j = 0; j < msg.length(); j++) {
                char c = msg.charAt(j);
                if (c == 'a' || c == 'A') {
                    totalAs++;
                }
            }
        }
    }
}
