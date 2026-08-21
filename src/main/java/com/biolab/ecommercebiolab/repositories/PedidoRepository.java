package com.biolab.ecommercebiolab.repositories;

import com.biolab.ecommercebiolab.entities.Pedido;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PedidoRepository extends JpaRepository<Pedido, Long> {
}
