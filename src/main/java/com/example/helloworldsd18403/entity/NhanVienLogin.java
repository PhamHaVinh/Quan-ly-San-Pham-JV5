package com.example.helloworldsd18403.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class NhanVienLogin {
    private String id;
    private String ten;
    private String manv;
    private String tendangnhap;
    private String matkhau;
    private boolean trangthai;
}
