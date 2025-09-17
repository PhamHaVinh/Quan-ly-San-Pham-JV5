package com.example.helloworldsd18403.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "nhan_vien")
public class NhanVien {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_nhan_vien")
    private Integer id;

    @Column(name = "ten")
    private String ten;

    @Column(name = "ma_nhan_vien")
    private String maNV;

    @Column(name = "ten_dang_nhap")
    private String tenDN;

    @Column(name = "mat_khau")
    private String MK;

    @Column(name = "trang_thai")
    private Boolean trangThai;
}
