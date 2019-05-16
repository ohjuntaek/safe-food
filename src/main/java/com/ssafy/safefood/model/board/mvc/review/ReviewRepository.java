package com.ssafy.safefood.model.board.mvc.review;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ReviewRepository extends JpaRepository<ReviewVO, Integer>{
	@Query(value = "select sum(rating) as sumrating from review where foodcode = ?1", nativeQuery = true)
	public List<Integer> sumrating(int no);
}
