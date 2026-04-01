package com.mycompany.tadaw_questao_45;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;

@Named("idadeBean")
@SessionScoped
public class IdadeBean implements Serializable {
    private List<String> idades = new ArrayList<>(Collections.nCopies(20, ""));
    private int menor, qtdMenor;
    private boolean resultadoDisp = false;

    public List<String> getIdades() {
        return idades;
    }

    public int getMenor() {
        return menor;
    }

    public int getQtdMenor() {
        return qtdMenor;
    }

    public boolean isResultadoDisp() {
        return resultadoDisp;
    }

public String calcular() {
    menor = Integer.parseInt(idades.get(0));
    qtdMenor = 1;

    for (int i = 1; i < idades.size(); i++) {
        int idadeAtual = Integer.parseInt(idades.get(i));
        if (idadeAtual < menor) {
            menor = idadeAtual;
            qtdMenor = 1;
        } else if (idadeAtual == menor) {
            qtdMenor++;
        }
    }
    resultadoDisp = true;
    return null;
}

}
