package com.example.helloworldsd18403.service;

import com.example.helloworldsd18403.entity.SanPham;
import com.example.helloworldsd18403.repository.SanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SanPhamService {
    @Autowired
    SanPhamRepository sanPhamRepository;

    public List<SanPham> getAll() {
        return sanPhamRepository.findAll();
    }

    public void them(SanPham sanPham){
        sanPhamRepository.save(sanPham);
    }

    public void sua(SanPham sanPham){
        sanPhamRepository.save(sanPham);
    }

    public void xoa(Integer id) {
        sanPhamRepository.deleteById(id);
    }

    public SanPham findById(Integer id){
        return sanPhamRepository.findById(id).get();
    }
}
