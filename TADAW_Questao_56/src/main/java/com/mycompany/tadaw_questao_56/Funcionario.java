/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tadaw_questao_56;

/**
 *
 * @author leo
 */
public class Funcionario {
    private String nome;
    private String sexo;
    private Integer idade;     
    private String bairro;
    private Double peso;        
    private Double altura;       
    private String cargo;
    private Double salarioBruto;
    private Double encargos;     
    private Double acrescimos;   
    
    public double getSalarioLiquido() {
        return salarioBruto - encargos + acrescimos;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public Integer getIdade() {
        return idade;
    }

    public void setIdade(Integer idade) {
        this.idade = idade;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public Double getPeso() {
        return peso;
    }

    public void setPeso(Double peso) {
        this.peso = peso;
    }

    public Double getAltura() {
        return altura;
    }

    public void setAltura(Double altura) {
        this.altura = altura;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public Double getSalarioBruto() {
        return salarioBruto;
    }

    public void setSalarioBruto(Double salarioBruto) {
        this.salarioBruto = salarioBruto;
    }

    public Double getEncargos() {
        return encargos;
    }

    public void setEncargos(Double encargos) {
        this.encargos = encargos;
    }

    public Double getAcrescimos() {
        return acrescimos;
    }

    public void setAcrescimos(Double acrescimos) {
        this.acrescimos = acrescimos;
    }

    
}
