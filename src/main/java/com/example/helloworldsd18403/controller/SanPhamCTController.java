package com.example.helloworldsd18403.controller;

import com.example.helloworldsd18403.entity.SanPhamCT;
import com.example.helloworldsd18403.repository.SanPhamCTRepository;
import com.example.helloworldsd18403.repository.SanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping("/sanphamct")
public class SanPhamCTController {
    @Autowired
    SanPhamRepository sanPhamRepository;
    @Autowired
    SanPhamCTRepository sanPhamCTRepository;

    @GetMapping("/hienthi")
    public String hienThi(Model model){
        model.addAttribute("danhsach", sanPhamCTRepository.findAll());
        return "sanphamct/hienthi";
    }

    @PostMapping("/them")
    public String them(SanPhamCT sanPhamCT) {
        sanPhamCTRepository.save(sanPhamCT);
        return "redirect:/sanphamct/hienthi";
    }

    @GetMapping("/sua/{id}")
    public String hienThiSua(@PathVariable("id") Integer id, Model model) {
        Optional<SanPhamCT> sanPhamCTOptional = sanPhamCTRepository.findById(id);
        if (sanPhamCTOptional.isPresent()) {
            model.addAttribute("sanphamCT", sanPhamCTOptional.get());
        } else {
            model.addAttribute("error", "sp chi tiet không tồn tại");
            return "error-page";
        }
        return "sanphamct/sua";
    }

    @PostMapping("/sua")
    public String sua(SanPhamCT sanPhamCT) {
        sanPhamCTRepository.save(sanPhamCT);
        return "redirect:/sanphamct/hienthi";
    }

    @GetMapping("/xoa")
    public String xoa(@RequestParam("id") Integer id) {
        sanPhamCTRepository.deleteById(id);
        return "redirect:/sanphamct/hienthi";
    }

    @GetMapping("/chitiet/{id}")
    public String chiTiet(@PathVariable("id") Integer id, Model model) {
        Optional<SanPhamCT> sanPhamCTOptional = sanPhamCTRepository.findById(id);
        if (sanPhamCTOptional.isPresent()) {
            model.addAttribute("sanphamCT", sanPhamCTOptional.get());
        } else {
            model.addAttribute("error", "sp chi tiet không tồn tại");
            return "error-page";
        }
        return "sanphamct/chitiet";
    }

    @GetMapping("/search")
    public String timKiem(Model model, @RequestParam("id") Integer id) {
        Optional<SanPhamCT> sanPhamCTOptional = sanPhamCTRepository.findById(id);
        if (sanPhamCTOptional.isPresent()) {
            model.addAttribute("sanphamCT", sanPhamCTOptional.get());
        } else {
            model.addAttribute("error", "sp chi tiet không tồn tại");
            return "error-page"; // Tên trang lỗi nếu không tìm thấy hóa đơn
        }
        return "sanphamct/chitiet"; // Sử dụng đúng trang hiển thị chi tiết hóa đơn
    }
}
