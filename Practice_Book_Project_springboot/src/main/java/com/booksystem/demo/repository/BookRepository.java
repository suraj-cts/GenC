package com.booksystem.demo.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import com.booksystem.demo.entity.Book;

public interface BookRepository extends JpaRepository<Book, Long> {
}
