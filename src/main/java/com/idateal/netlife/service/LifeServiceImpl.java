package com.idateal.netlife.service;

import org.springframework.stereotype.Service;

/**
 * @Author: antony
 * @Date: 2019-06-25 11:36
 * @description:
 */
@Service
public class LifeServiceImpl implements LifeService {
    @Override
    public void getlevel1() {
        System.out.println("获得一阶");
    }
}
