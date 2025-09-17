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
@Table(name = "khach_hang")
public class KhachHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_khach_hang")
    private Integer id;

    @Column(name = "ten")
    private String ten;

    @Column(name = "sdt")
    private String SDT;

    @Column(name = "ma_kh")
    private String maKH;

    @Column(name = "trang_thai")
    private Boolean trangThai;
}
