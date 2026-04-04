/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tadaw_questao_56;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author leo
 */
@ManagedBean(name = "empresaBean")
@SessionScoped

public class EmpresaBean {

    private Funcionario[] funcionarios = new Funcionario[3]; // 3 funcion. p/ teste
    private int indice = 0;
    private Funcionario novo = new Funcionario();

    public Funcionario getNovo() {
        return novo;
    }

    public int getIndice() {
        return indice;
    }

    public void salvarFuncionario() {
        if (indice < funcionarios.length) {
            funcionarios[indice] = novo;
            indice++;
            novo = new Funcionario(); // limpa para próximo cadastro
        }
    }

    // a) Transporte
    public int contarTransporte() {
        int qtd = 0;
        for (int i = 0; i < indice; i++) {
            String b = funcionarios[i].getBairro();
            if (b.equalsIgnoreCase("Brotas")
                    || b.equalsIgnoreCase("Nazaré")
                    || b.equalsIgnoreCase("Bonocô")) {
                qtd++;
            }
        }
        return qtd;
    }

    // b) Bonus motivação
    public int contarBonus() {
        int qtd = 0;
        for (int i = 0; i < indice; i++) {
            double s = funcionarios[i].getSalarioBruto();
            if (s >= 200 && s <= 500) {
                qtd++;
            }
        }
        return qtd;
    }

    // c) Média peso
    public double mediaPeso() {
        double soma = 0;
        for (int i = 0; i < indice; i++) {
            soma += funcionarios[i].getPeso();
        }
        return indice > 0 ? soma / indice : 0;
    }

    // d) Média idade
    public double mediaIdade() {
        double soma = 0;
        for (int i = 0; i < indice; i++) {
            soma += funcionarios[i].getIdade();
        }
        return indice > 0 ? soma / indice : 0;
    }

    // e) Basquete
    public int contarBasquete() {
        int qtd = 0;
        for (int i = 0; i < indice; i++) {
            Funcionario f = funcionarios[i];
            if (f.getSexo().equalsIgnoreCase("M")
                    && f.getAltura() >= 1.70 && f.getAltura() <= 2.10
                    && f.getIdade() >= 17 && f.getIdade() <= 25) {
                qtd++;
            }
        }
        return qtd;
    }

    // f) Total folha
    public double totalFolha() {
        double soma = 0;
        for (int i = 0; i < indice; i++) {
            soma += funcionarios[i].getSalarioLiquido();
        }
        return soma;
    }

    // g) Contar cargos
    public int contarGerentes() {
        int qtd = 0;
        for (int i = 0; i < indice; i++) {
            if (funcionarios[i].getCargo().equalsIgnoreCase("Gerente")) {
                qtd++;
            }
        }
        return qtd;
    }

    public int contarSecretarias() {
        int qtd = 0;
        for (int i = 0; i < indice; i++) {
            if (funcionarios[i].getCargo().equalsIgnoreCase("Secretária")) {
                qtd++;
            }
        }
        return qtd;
    }

    // h) Nova secretária
    public String novaSecretaria() {
        Funcionario candidata = null;
        for (int i = 0; i < indice; i++) {
            Funcionario f = funcionarios[i];
            if (f.getCargo().equalsIgnoreCase("Secretária") && f.getSalarioBruto() < 700) {
                if (candidata == null || f.getSalarioBruto() < candidata.getSalarioBruto()) {
                    candidata = f;
                }
            }
        }
        return candidata != null ? candidata.getNome() : "Nenhuma candidata encontrada";
    }
}
