package com.biolab.ecommercebiolab.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.Instant;

@Entity
// substitui os getters e setters
@Data
// substitui o construtor com todos os argumentos
@AllArgsConstructor
// substitui o construtor vazio
@NoArgsConstructor
public class Pedido {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private Instant momento;
    private StatusPedido status;
    @ManyToOne
    private Usuario cliente;


    public Pedido(PedidoDTO u) {
        this.momento = u.getMomento();
        this.status = StatusPedido.AGUARDANDO_PAGAMENTO;
        //this.cliente = u.getCliente();

    }

}
