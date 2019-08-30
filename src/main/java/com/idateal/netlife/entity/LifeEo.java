package com.idateal.netlife.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * @Author: antony
 * @Date: 2019-07-05 10:48
 * @description:
 */
@Data
@Entity
@Table(name = "tb_life")
public class LifeEo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name = "close",length = 65536)
    private String close;
    @Column(name = "food",length = 65536)
    private String food;
    @Column(name = "home",length = 65536)
    private String home;
    @Column(name = "walk",length = 65536)
    private String walk;
    @Column(name = "rest",length = 65536)
    private String rest;
    @Column(name = "luck",length = 65536)
    private String luck;
    @Column(name = "name")
    private String name;
}
