package com.biolab.ecommercebiolab.repositories;

import com.biolab.ecommercebiolab.entities.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
}
