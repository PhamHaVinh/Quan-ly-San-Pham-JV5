package com.example.helloworldsd18403.controller;

import com.example.helloworldsd18403.entity.SanPham;
import com.example.helloworldsd18403.service.SanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/sanpham")
public class SanPhamController {
    @Autowired
    SanPhamService sanPhamService;

    @GetMapping("/hienthi")
    public String hienThi(Model model){
        model.addAttribute("danhsach", sanPhamService.getAll());
        return "sanpham/hienthi";
    }

    @PostMapping("/them")
    public String them(SanPham sanPham) {
        sanPhamService.them(sanPham);
        return "redirect:/sanpham/hienthi";
    }

    @GetMapping("/sua/{id}")
    public String hienThiSua(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("sanPham", sanPhamService.findById(id));
        return "sanpham/sua";
    }
    @PostMapping("/sua")
    public String sua(SanPham sanPham) {
        sanPhamService.sua(sanPham);
        return "redirect:/sanpham/hienthi";
    }

    @GetMapping("/xoa")
    public String xoa(@RequestParam("id") Integer id) {
        sanPhamService.xoa(id);
        return "redirect:/sanpham/hienthi";
    }

    @GetMapping("/chitiet/{id}")
    public String chiTiet(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("sanPham", sanPhamService.findById(id));
        return "sanpham/chitiet";
    }

    @GetMapping("/search")
    public String timKiem(Model model, @RequestParam("id") Integer id){
        SanPham sp = sanPhamService.findById(id);
        model.addAttribute("sanPham", sp);
        return "sanpham/chitiet";
    }
}
