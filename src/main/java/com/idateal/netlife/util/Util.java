package com.idateal.netlife.util;

/**
 * @Author: antony
 * @Date: 2019-06-25 10:09
 * @description: 算法工具类
 */
public class Util {
    /**
     * 获得一阶
     * @param idCard 身份证号
     * @return 获取身份证号码，返回年月日字符数组
     *
     */
    public static char[] getLevel1(String idCard){
        String birth = idCard.substring(6,14);
        char[] arr = birth.toCharArray();
        return arr;
    }

    /**
     * 获得二阶
     * @param idCard 身份证号
     * @return
     */
    public static char[] getLevel2(String idCard){
        Integer birth = Integer.parseInt(idCard.substring(6,14));
        Integer sum  = 0;
        while(birth != 0){
            sum = sum + birth%10;
            birth = birth/10;
        }
        char[] res;
        if (sum>9){
            res = sum.toString().toCharArray();
        }else {
            res = ("0"+sum).toCharArray();
        }
        return res;
    }

    /**
     * 获得当令
     * @param idCard 身份证号
     * @return
     */
    public static Integer getLevel3(String idCard){
        Integer birth = Integer.parseInt(idCard.substring(6,14));
        Integer sum  = 0;
        while(birth != 0){
            sum = sum + birth%10;
            birth = birth/10;
        }
        while (sum>9){
            sum = sum/10%10+sum%10;
        }
        return sum;
    }
}
