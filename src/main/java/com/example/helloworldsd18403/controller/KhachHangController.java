package com.example.helloworldsd18403.controller;

import com.example.helloworldsd18403.entity.KhachHang;
import com.example.helloworldsd18403.repository.KhachHangRepository;
import com.example.helloworldsd18403.repository.SanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping("/khachhang")
public class KhachHangController {
    @Autowired
    SanPhamRepository sanPhamRepository;

    @Autowired
    KhachHangRepository khachHangRepository;

    @GetMapping("/hienthi")
    public String hienThi(Model model){
        model.addAttribute("danhsach", khachHangRepository.findAll());
        return "khachhang/hienthi";
    }

    @PostMapping("/them")
    public String them(KhachHang khachHang) {
        khachHangRepository.save(khachHang);
        return "redirect:/khachhang/hienthi";
    }

    @GetMapping("/sua/{id}")
    public String hienThiSua(@PathVariable("id") Integer id, Model model) {
        Optional<KhachHang> khachHangOptional = khachHangRepository.findById(id);
        if (khachHangOptional.isPresent()) {
            model.addAttribute("khachHang", khachHangOptional.get());
        } else {
            model.addAttribute("error", "Hóa đơn không tồn tại");
            return "error-page";
        }
        return "khachhang/sua";
    }

    @PostMapping("/sua")
    public String sua(KhachHang khachHang) {
        khachHangRepository.save(khachHang);
        return "redirect:/khachhang/hienthi";
    }

    @GetMapping("/xoa")
    public String xoa(@RequestParam("id") Integer id) {
        khachHangRepository.deleteById(id);
        return "redirect:/khachhang/hienthi";
    }

    @GetMapping("/chitiet/{id}")
    public String chiTiet(@PathVariable("id") Integer id, Model model) {
        Optional<KhachHang> khachHangOptional = khachHangRepository.findById(id);
        if (khachHangOptional.isPresent()) {
            model.addAttribute("khachHang", khachHangOptional.get());
        } else {
            // Nếu hóa đơn không tồn tại, bạn có thể xử lý thông báo lỗi hoặc chuyển hướng
            model.addAttribute("error", "Hóa đơn không tồn tại");
            return "error-page"; // Tên trang lỗi
        }
        return "khachhang/chitiet";
    }

    @GetMapping("/search")
    public String timKiem(Model model, @RequestParam("id") Integer id) {
        Optional<KhachHang> khachHangOptional = khachHangRepository.findById(id);
        if (khachHangOptional.isPresent()) {
            model.addAttribute("khachHang", khachHangOptional.get());
        } else {
            model.addAttribute("error", "Hóa đơn không tồn tại");
            return "error-page"; // Tên trang lỗi nếu không tìm thấy hóa đơn
        }
        return "khachhang/chitiet"; // Sử dụng đúng trang hiển thị chi tiết hóa đơn
    }
}
