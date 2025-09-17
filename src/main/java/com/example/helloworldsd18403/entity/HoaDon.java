package com.example.helloworldsd18403.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "hoa_don")
public class HoaDon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_hoa_don")
    private Integer id;

    @Column(name = "id_nhan_vien")
    private Integer idNV;

    @Column(name = "id_khach_hang")
    private Integer idKH;

    @Column(name = "ngay_mua_hang")
    private LocalDate ngayMuaHang;

    @Column(name = "trang_thai")
    private Boolean trangThai;
}
