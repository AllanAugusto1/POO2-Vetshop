package br.com.apirest.vetshop.model;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;

@Entity
public class Pedido {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;
    
    private String nome;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "cliente_id")
    private Cliente cliente;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "fornecedor_id")
    private Fornecedor fornecedor;

    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "pedido_id")
    private Set<ItemPedido> produtos;

    private LocalDate dataInclusao;
    private LocalDate dataAlteracao;
    
    public Long getId() {
        return Id;
    }
    public void setId(Long id) {
        Id = id;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public Cliente getCliente() {
        return cliente;
    }
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    public Fornecedor getFornecedor() {
        return fornecedor;
    }
    public void setFornecedor(Fornecedor fornecedor) {
        this.fornecedor = fornecedor;
    }
    public Set<ItemPedido> getItensPedido() {
        return produtos;
    }
    public void setItensPedido(Set<ItemPedido> itensPedido) {
        this.produtos = itensPedido;
    }
    public LocalDate getDataInclusao() {
        return dataInclusao;
    }
    public void setDataInclusao(LocalDate dataInclusao) {
        this.dataInclusao = dataInclusao;
    }
    public LocalDate getDataAlteracao() {
        return dataAlteracao;
    }
    public void setDataAlteracao(LocalDate dataAlteracao) {
        this.dataAlteracao = dataAlteracao;
    }
    public Pedido() {
        this.produtos = new HashSet<>();
    }
    public Pedido(Long id, String nome, Cliente cliente, Fornecedor fornecedor, Set<ItemPedido> itensPedido,
            LocalDate dataInclusao, LocalDate dataAlteracao) {
        Id = id;
        this.nome = nome;
        this.cliente = cliente;
        this.fornecedor = fornecedor;
        this.produtos = itensPedido;
        this.dataInclusao = dataInclusao;
        this.dataAlteracao = dataAlteracao;
    }  
}

