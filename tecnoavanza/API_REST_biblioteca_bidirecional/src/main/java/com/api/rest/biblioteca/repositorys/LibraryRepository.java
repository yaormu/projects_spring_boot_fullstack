package com.api.rest.biblioteca.repositorys;

import com.api.rest.biblioteca.entitys.Library;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LibraryRepository extends JpaRepository<Library, Long> {
}