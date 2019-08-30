package com.idateal.netlife.netlife;

import com.idateal.netlife.util.Util;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Calendar;
import java.util.Date;

@RunWith(SpringRunner.class)
@SpringBootTest
public class NetlifeApplicationTests {

    @Test
    public void contextLoads() {

    }

    @Test
    public void test() {
        //身份证号
        String idCard = "513002199802273575";
        //截取出生年月日
        String birth = idCard.substring(6,14);

        System.out.println("今日当令："+ Util.getNowDayDL(birth));

    }

}
