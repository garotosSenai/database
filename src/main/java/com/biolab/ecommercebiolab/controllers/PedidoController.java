package com.biolab.ecommercebiolab.controllers;

import com.biolab.ecommercebiolab.entities.Pedido;
import com.biolab.ecommercebiolab.entities.PedidoDTO;
import com.biolab.ecommercebiolab.entities.Usuario;
import com.biolab.ecommercebiolab.repositories.PedidoRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("pedido")
public class PedidoController {

    private final PedidoRepository pedidoRepository;

    public PedidoController(PedidoRepository pedidoRepository) {
        this.pedidoRepository = pedidoRepository;
    }

    @PostMapping
    public ResponseEntity<?> criarUsuario(@RequestBody PedidoDTO u) {
        Pedido pedido = new Pedido(u);
        pedidoRepository.save(pedido);
        return ResponseEntity.ok("Criado com sucesso!");
    }
}
