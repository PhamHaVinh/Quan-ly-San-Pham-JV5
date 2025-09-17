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
@Table(name = "sp_chi_tiet")
public class SanPhamCT {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_spct")
    private Integer id;

    @Column(name = "ma_spct")
    private String maSPCT;

    @Column(name = "id_kich_thuoc")
    private Integer idKT;

    @Column(name = "id_mau_sac")
    private Integer idMS;

    @Column(name = "id_san_pham")
    private Integer idSP;

    @Column(name = "so_luong")
    private Integer soLuong;

    @Column(name = "don_gia")
    private float donGia;

    @Column(name = "trang_thai")
    private Boolean trangThai;
}
