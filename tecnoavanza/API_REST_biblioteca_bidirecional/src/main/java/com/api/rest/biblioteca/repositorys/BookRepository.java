package com.api.rest.biblioteca.repositorys;

import com.api.rest.biblioteca.entitys.Book;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Book, Long> {
}
