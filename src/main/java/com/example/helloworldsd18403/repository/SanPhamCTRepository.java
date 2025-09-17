package com.example.helloworldsd18403.repository;

import com.example.helloworldsd18403.entity.SanPhamCT;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SanPhamCTRepository extends JpaRepository<SanPhamCT, Integer> {
}
