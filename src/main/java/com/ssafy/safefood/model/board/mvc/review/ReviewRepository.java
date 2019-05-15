package com.ssafy.safefood.model.board.mvc.review;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ReviewRepository extends JpaRepository<ReviewVO, Integer>{

}
