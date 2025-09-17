package com.example.helloworldsd18403.controller;

import com.example.helloworldsd18403.service.NhanVienService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/taikhoan")
public class Login {
    NhanVienService nhanVienService = new NhanVienService();

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String showLogin(){
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam("tendangnhap") String tendangnhap,
                        @RequestParam("matkhau") String matkhau, Model model, HttpServletRequest request)
    {
        if (tendangnhap.equals("PH44956") && matkhau.equals("789632145")){
            model.addAttribute("tendangnhap", tendangnhap);
            model.addAttribute("matkhau",matkhau);
            return "redirect:/sanpham/hienthi";
        }

        request.setAttribute("error","Sai thong tin dang nhập");
        model.addAttribute("error","Sai thong tin dang nhap");
        return "taikhoan/login";
    }
}
