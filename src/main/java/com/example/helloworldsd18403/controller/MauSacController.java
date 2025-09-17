package com.example.helloworldsd18403.controller;

import com.example.helloworldsd18403.entity.MauSac;
import com.example.helloworldsd18403.repository.MauSacRepository;
import com.example.helloworldsd18403.repository.SanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping("/mausac")
public class MauSacController {
    @Autowired
    SanPhamRepository sanPhamRepository;

    @Autowired
    MauSacRepository mauSacRepository;

    @GetMapping("/hienthi")
    public String hienThi(Model model){
        model.addAttribute("danhsach", mauSacRepository.findAll());
        return "mausac/hienthi";
    }

    @PostMapping("/them")
    public String them(MauSac mauSac) {
        mauSacRepository.save(mauSac);
        return "redirect:/mausac/hienthi";
    }

    @GetMapping("/sua/{id}")
    public String hienThiSua(@PathVariable("id") Integer id, Model model) {
        Optional<MauSac> mauSacOptional = mauSacRepository.findById(id);
        if (mauSacOptional.isPresent()) {
            model.addAttribute("mauSac", mauSacOptional.get());
        } else {
            model.addAttribute("error", "Hóa đơn không tồn tại");
            return "error-page";
        }
        return "mausac/sua";
    }

    @PostMapping("/sua")
    public String sua(MauSac mauSac) {
        mauSacRepository.save(mauSac);
        return "redirect:/mausac/hienthi";
    }

    @GetMapping("/xoa")
    public String xoa(@RequestParam("id") Integer id) {
        mauSacRepository.deleteById(id);
        return "redirect:/mausac/hienthi";
    }

    @GetMapping("/chitiet/{id}")
    public String chiTiet(@PathVariable("id") Integer id, Model model) {
        Optional<MauSac> mauSacOptional = mauSacRepository.findById(id);
        if (mauSacOptional.isPresent()) {
            model.addAttribute("mauSac", mauSacOptional.get());
        } else {
            // Nếu hóa đơn không tồn tại, bạn có thể xử lý thông báo lỗi hoặc chuyển hướng
            model.addAttribute("error", "Hóa đơn không tồn tại");
            return "error-page"; // Tên trang lỗi
        }
        return "mausac/chitiet";
    }

    @GetMapping("/search")
    public String timKiem(Model model, @RequestParam("id") Integer id) {
        Optional<MauSac> mauSacOptional = mauSacRepository.findById(id);
        if (mauSacOptional.isPresent()) {
            model.addAttribute("mauSac", mauSacOptional.get());
        } else {
            model.addAttribute("error", "Hóa đơn không tồn tại");
            return "error-page"; // Tên trang lỗi nếu không tìm thấy hóa đơn
        }
        return "mausac/chitiet"; // Sử dụng đúng trang hiển thị chi tiết hóa đơn
    }
}
