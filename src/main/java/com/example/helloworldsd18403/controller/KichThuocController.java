package com.example.helloworldsd18403.controller;

import com.example.helloworldsd18403.entity.KichThuoc;
import com.example.helloworldsd18403.repository.KichThuocRepository;
import com.example.helloworldsd18403.repository.SanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping("/kichthuoc")
public class KichThuocController {
    @Autowired
    SanPhamRepository sanPhamRepository;

    @Autowired
    KichThuocRepository kichThuocRepository;

    @GetMapping("/hienthi")
    public String hienThi(Model model){
        model.addAttribute("danhsach", kichThuocRepository.findAll());
        return "kichthuoc/hienthi";
    }

    @PostMapping("/them")
    public String them(KichThuoc kichThuoc) {
        kichThuocRepository.save(kichThuoc);
        return "redirect:/kichthuoc/hienthi";
    }

    @GetMapping("/sua/{id}")
    public String hienThiSua(@PathVariable("id") Integer id, Model model) {
        Optional<KichThuoc> kichThuocOptional = kichThuocRepository.findById(id);
        if (kichThuocOptional.isPresent()) {
            model.addAttribute("kichThuoc", kichThuocOptional.get());
        } else {
            model.addAttribute("error", "Hóa đơn không tồn tại");
            return "error-page";
        }
        return "kichthuoc/sua";
    }

    @PostMapping("/sua")
    public String sua(KichThuoc kichThuoc) {
        kichThuocRepository.save(kichThuoc);
        return "redirect:/kichthuoc/hienthi";
    }

    @GetMapping("/xoa")
    public String xoa(@RequestParam("id") Integer id) {
        kichThuocRepository.deleteById(id);
        return "redirect:/kichthuoc/hienthi";
    }

    @GetMapping("/chitiet/{id}")
    public String chiTiet(@PathVariable("id") Integer id, Model model) {
        Optional<KichThuoc> kichThuocOptional = kichThuocRepository.findById(id);
        if (kichThuocOptional.isPresent()) {
            model.addAttribute("kichThuoc", kichThuocOptional.get());
        } else {
            // Nếu hóa đơn không tồn tại, bạn có thể xử lý thông báo lỗi hoặc chuyển hướng
            model.addAttribute("error", "Hóa đơn không tồn tại");
            return "error-page"; // Tên trang lỗi
        }
        return "kichthuoc/chitiet";
    }

    @GetMapping("/search")
    public String timKiem(Model model, @RequestParam("id") Integer id) {
        Optional<KichThuoc> kichThuocOptional = kichThuocRepository.findById(id);
        if (kichThuocOptional.isPresent()) {
            model.addAttribute("kichThuoc", kichThuocOptional.get());
        } else {
            model.addAttribute("error", "Hóa đơn không tồn tại");
            return "error-page"; // Tên trang lỗi nếu không tìm thấy hóa đơn
        }
        return "kichthuoc/chitiet"; // Sử dụng đúng trang hiển thị chi tiết hóa đơn
    }
}
