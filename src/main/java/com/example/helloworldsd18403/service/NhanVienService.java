package com.example.helloworldsd18403.service;

import com.example.helloworldsd18403.entity.NhanVienLogin;

import java.util.ArrayList;

public class NhanVienService {
    ArrayList<NhanVienLogin> lstNhanVien = new ArrayList<>();

    public NhanVienService(){
        lstNhanVien.add(new NhanVienLogin("1","Tuấn Anh","nv1","nhanvien01","1",true));
        lstNhanVien.add(new NhanVienLogin("2","Tuấn Anh","nv2","nhanvien02","1",true));
        lstNhanVien.add(new NhanVienLogin("3","Tuấn Anh","nv3","nhanvien03","1",true));
    }
    public NhanVienLogin getbytendangnhap(String tendangnhap){
        NhanVienLogin tk = null;;
        for (NhanVienLogin nv: lstNhanVien
        ) {
            if (nv.getTendangnhap().equals(tendangnhap)){
                tk= nv;
            }
        }
        return tk;
    }
    public NhanVienLogin getbymatkhau(String matkhau){
        NhanVienLogin mk = null;;
        for (NhanVienLogin nv: lstNhanVien
        ) {
            if (nv.getMatkhau().equals(matkhau)){
                mk = nv;
            }
        }
        return mk;
    }
}
