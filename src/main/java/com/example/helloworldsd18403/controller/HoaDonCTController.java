package com.example.helloworldsd18403.controller;

import com.example.helloworldsd18403.entity.HoaDonCT;
import com.example.helloworldsd18403.repository.HoaDonCTRepository;
import com.example.helloworldsd18403.repository.SanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping("/hoadonct")
public class HoaDonCTController {
    @Autowired
    SanPhamRepository sanPhamRepository;
    @Autowired
    HoaDonCTRepository hoaDonCTRepository;

    @GetMapping("/hienthi")
    public String hienThi(Model model){
        model.addAttribute("danhsach", hoaDonCTRepository.findAll());
        return "hoadonct/hienthi";
    }

    @PostMapping("/them")
    public String them(HoaDonCT hoaDonCT) {
        hoaDonCTRepository.save(hoaDonCT);
        return "redirect:/hoadonct/hienthi";
    }

    @GetMapping("/sua/{id}")
    public String hienThiSua(@PathVariable("id") Integer id, Model model) {
        Optional<HoaDonCT> hoaDonCTOptional = hoaDonCTRepository.findById(id);
        if (hoaDonCTOptional.isPresent()) {
            model.addAttribute("hoaDon", hoaDonCTOptional.get());
        } else {
            model.addAttribute("error", "Hóa đơn không tồn tại");
            return "error-page";
        }
        return "hoadonct/sua";
    }

    @PostMapping("/sua")
    public String sua(HoaDonCT hoaDonCT) {
        hoaDonCTRepository.save(hoaDonCT);
        return "redirect:/hoadonct/hienthi";
    }

    @GetMapping("/xoa")
    public String xoa(@RequestParam("id") Integer id) {
        hoaDonCTRepository.deleteById(id);
        return "redirect:/hoadonct/hienthi";
    }

    @GetMapping("/chitiet/{id}")
    public String chiTiet(@PathVariable("id") Integer id, Model model) {
        Optional<HoaDonCT> hoaDonCTOptional = hoaDonCTRepository.findById(id);
        if (hoaDonCTOptional.isPresent()) {
            model.addAttribute("hoaDon", hoaDonCTOptional.get());
        } else {
            // Nếu hóa đơn không tồn tại, bạn có thể xử lý thông báo lỗi hoặc chuyển hướng
            model.addAttribute("error", "Hóa đơn không tồn tại");
            return "error-page"; // Tên trang lỗi
        }
        return "hoadonct/chitiet";
    }

    @GetMapping("/search")
    public String timKiem(Model model, @RequestParam("id") Integer id) {
        Optional<HoaDonCT> hoaDonCTOptional = hoaDonCTRepository.findById(id);
        if (hoaDonCTOptional.isPresent()) {
            model.addAttribute("hoaDon", hoaDonCTOptional.get());
        } else {
            model.addAttribute("error", "Hóa đơn không tồn tại");
            return "error-page"; // Tên trang lỗi nếu không tìm thấy hóa đơn
        }
        return "hoadonct/chitiet"; // Sử dụng đúng trang hiển thị chi tiết hóa đơn
    }
}
