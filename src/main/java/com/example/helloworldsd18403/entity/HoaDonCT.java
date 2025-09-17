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
@Table(name = "hoa_don_ct")
public class HoaDonCT {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_hoa_don_ct")
    private Integer id;

    @Column(name = "id_hoa_don")
    private Integer idHD;

    @Column(name = "id_spct")
    private Integer idSPCT;

    @Column(name = "so_luong")
    private Integer soLuong;

    @Column(name = "don_gia")
    private float donGia;

    @Column(name = "trang_thai")
    private Boolean trangThai;
}
