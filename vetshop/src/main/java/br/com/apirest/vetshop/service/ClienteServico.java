package br.com.apirest.vetshop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.apirest.vetshop.model.Cliente;
import br.com.apirest.vetshop.repository.IClienteRepositorio;

@Service
public class ClienteServico implements IBaseServicoJPA<Cliente>{
    
    @Autowired
    private IClienteRepositorio repositorio;
    
    public ClienteServico(IClienteRepositorio repo) {
        this.repositorio = repo;
    }

    @Override
    public List<Cliente> Browse() {
        return this.repositorio.findAll();
    }

    @Override
    public Optional<Cliente> Read(Long chave) {
        return this.repositorio.findById(chave);
    }

    @Override
    public Cliente Edit(Cliente obj) {
        Optional<Cliente> clienteExistente = this.repositorio.findById(obj.getId());
        if(clienteExistente.isPresent()){
            Cliente ce = clienteExistente.get();
            ce.setNome(obj.getNome());
            ce.setCpf(obj.getCpf());
            ce.setEmail(obj.getEmail());
            ce.setTelefone(obj.getTelefone());
            this.repositorio.save(ce);
        }
        return null;
    }

    @Override
    public Cliente Add(Cliente obj) {
       return this.repositorio.save(obj);
    }

    @Override
    public Cliente Delete(Long chave) {
        Optional<Cliente> clienteExistente = this.repositorio.findById(chave);
        if(clienteExistente.isPresent()){
            this.repositorio.delete(clienteExistente.get());
            return clienteExistente.get();
        }
        return null;
    }
    
}
