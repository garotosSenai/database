package com.biolab.ecommercebiolab.controllers;

import com.biolab.ecommercebiolab.entities.Usuario;
import com.biolab.ecommercebiolab.repositories.UsuarioRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("usuario")
public class UsuarioController {
    private final UsuarioRepository usuarioRepository;
    public UsuarioController(UsuarioRepository usuarioRepository) {
        this.usuarioRepository = usuarioRepository;
    }

    @PostMapping
    public ResponseEntity<?> criarUsuario(@RequestBody Usuario u){
        usuarioRepository.save(new Usuario(u));
        return ResponseEntity.ok("Criado com sucesso!");
    }


}
