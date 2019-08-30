package com.idateal.netlife.util;

import java.util.Calendar;

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
     * @param num 加每一位数直至小于10
     * @return
     */
    public static Integer getWithSum(int num){
        Integer sum  = 0;
        while(num != 0){
            sum = sum + num%10;
            num = num/10;
        }
        while (sum>9){
            sum = sum/10%10+sum%10;
        }
        return sum;
    }


    /**
     * 算今日当令
     * @param idCard
     * @return
     */
    public static String getNowDayDL(String idCard){
        //截取出生年月日
        String birth = idCard.substring(6,14);
        String dateMeet;
        //脏腑排序
        String[] meet = {"肺","肠","心","肝","胆","肾","胃","脾","膀胱"};

        //算当令，
        String day = String.valueOf(Util.getWithSum(Integer.parseInt(birth)));

        //算起始位置（生日相加到小于10）
        System.out.println("生日"+birth.substring(6));
        int startIndex = Util.getWithSum(Integer.parseInt(birth.substring(6)));
        System.out.println("起始位置:"+startIndex);
        //算今日日期位置
        Calendar cal=Calendar.getInstance();
        Integer nowDay = cal.get(Calendar.DATE);
        //今日当令排序
        Integer endIndex = nowDay % 9;
        if (endIndex == 0){
            endIndex = 9;
        }
        System.out.println("终点位置"+endIndex);
        //算相差多少
        int rang ;
        if (endIndex < startIndex){
           rang = endIndex+9-startIndex;
        }else {
            rang = endIndex-startIndex;
        }
        System.out.println("相差"+rang);
        //算今日当令的index
        int index = Integer.parseInt(day)-1+rang;
        if (index>meet.length){
            index  = index-9;
        }
        System.out.println("最终index"+index);
//        //当令排序
//        Integer dayMeetSort = Integer.parseInt(day)%9;
//        if (dayMeetSort == 0){
//            dayMeetSort = 9;
//        }
//        System.out.println("生日当令："+meet[dayMeetSort-1]);
//        //今日当令


        return meet[index];
//        return  null;
    }
}
