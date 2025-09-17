package com.example.helloworldsd18403.controller;

import com.example.helloworldsd18403.entity.HoaDon;
import com.example.helloworldsd18403.repository.HoaDonRepository;
import com.example.helloworldsd18403.repository.SanPhamRepository;
import com.example.helloworldsd18403.repository.HoaDonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping("/hoadon")
public class HoaDonController {
    @Autowired
    HoaDonRepository hoaDonRepository;

    @Autowired
    SanPhamRepository sanPhamRepository;

    @GetMapping("/hienthi")
    public String hienThi(Model model) {
        model.addAttribute("danhsach", hoaDonRepository.findAll());
        return "hoadon/hienthi";
    }

    @PostMapping("/them")
    public String them(HoaDon hoaDon) {
        hoaDonRepository.save(hoaDon);
        return "redirect:/hoadon/hienthi";
    }

    @GetMapping("/sua/{id}")
    public String hienThiSua(@PathVariable("id") Integer id, Model model) {
        Optional<HoaDon> hoaDonOptional = hoaDonRepository.findById(id);
        if (hoaDonOptional.isPresent()) {
            model.addAttribute("hoaDon", hoaDonOptional.get());
        } else {
            model.addAttribute("error", "Hóa đơn không tồn tại");
            return "error-page";
        }
        return "hoadon/sua";
    }

    @PostMapping("/sua")
    public String sua(HoaDon hoaDon) {
        hoaDonRepository.save(hoaDon);
        return "redirect:/hoadon/hienthi";
    }

    @GetMapping("/xoa")
    public String xoa(@RequestParam("id") Integer id) {
        hoaDonRepository.deleteById(id);
        return "redirect:/hoadon/hienthi";
    }

    @GetMapping("/chitiet/{id}")
    public String chiTiet(@PathVariable("id") Integer id, Model model) {
        Optional<HoaDon> hoaDonOptional = hoaDonRepository.findById(id);
        if (hoaDonOptional.isPresent()) {
            model.addAttribute("hoaDon", hoaDonOptional.get());
        } else {
            // Nếu hóa đơn không tồn tại, bạn có thể xử lý thông báo lỗi hoặc chuyển hướng
            model.addAttribute("error", "Hóa đơn không tồn tại");
            return "error-page"; // Tên trang lỗi
        }
        return "hoadon/chitiet";
    }

    @GetMapping("/search")
    public String timKiem(Model model, @RequestParam("id") Integer id) {
        Optional<HoaDon> hoaDonOptional = hoaDonRepository.findById(id);
        if (hoaDonOptional.isPresent()) {
            model.addAttribute("hoaDon", hoaDonOptional.get());
        } else {
            model.addAttribute("error", "Hóa đơn không tồn tại");
            return "error-page"; // Tên trang lỗi nếu không tìm thấy hóa đơn
        }
        return "hoadon/chitiet"; // Sử dụng đúng trang hiển thị chi tiết hóa đơn
    }

}
