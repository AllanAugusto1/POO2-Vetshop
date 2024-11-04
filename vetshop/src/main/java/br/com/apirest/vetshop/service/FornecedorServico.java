package br.com.apirest.vetshop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.apirest.vetshop.model.Fornecedor;
import br.com.apirest.vetshop.repository.IFornecedorRepositorio;

@Service
public class FornecedorServico implements IBaseServicoJPA<Fornecedor> {
    
    @Autowired
    private IFornecedorRepositorio repositorio;
    

    public FornecedorServico(IFornecedorRepositorio repo) {
        this.repositorio = repo;
    }

    @Override
    public List<Fornecedor> Browse() {
        return this.repositorio.findAll();
    }

    @Override
    public Optional<Fornecedor> Read(Long chave) {
        return this.repositorio.findById(chave);
    }

    @Override
    public Fornecedor Edit(Fornecedor obj) {
        Optional<Fornecedor> fornecedorExistente = this.repositorio.findById(obj.getId());
        if(fornecedorExistente.isPresent()){
            Fornecedor fe = fornecedorExistente.get();
            fe.setRazaoSocial(obj.getRazaoSocial()); 
            fe.setCnpj(obj.getCnpj());
            fe.setEmail(obj.getEmail());
            fe.setTelefone(obj.getTelefone());
            this.repositorio.save(fe);
        }
        return null;
    }

    @Override
    public Fornecedor Add(Fornecedor obj) {
        return this.repositorio.save(obj);
    }

    @Override
    public Fornecedor Delete(Long chave) {
        Optional<Fornecedor> fornecedorExiste = this.repositorio.findById(chave);
        if(fornecedorExiste.isPresent()){
            this.repositorio.delete(fornecedorExiste.get());
            return fornecedorExiste.get();
        }
        return null;
    }
    
}
