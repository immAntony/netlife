package com.idateal.netlife.dao;

import com.idateal.netlife.entity.LifeEo;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @Author: antony
 * @Date: 2019-07-05 11:05
 * @description:
 */
public interface LifeDao extends JpaRepository<LifeEo,Long> {
    /**
     * 通过脏腑查找
     * @param name
     * @return
     */
    LifeEo findByName(String name);
}
