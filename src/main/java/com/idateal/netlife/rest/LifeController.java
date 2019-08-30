package com.idateal.netlife.rest;

import com.idateal.netlife.dao.LifeDao;
import com.idateal.netlife.entity.LifeEo;
import com.idateal.netlife.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

/**
 * @Author: antony
 * @Date: 2019-06-25 11:04
 * @description:
 */
@Controller
@CrossOrigin
//@RestController
public class LifeController {

    @Autowired
    private LifeDao lifeDao;
    @PostMapping("feature")
    @ResponseBody
    public Object feature(@RequestParam("idCard") String idCard){
        System.out.println(idCard);
        char[] level1 = Util.getLevel1(idCard);
        char[] level2 = Util.getLevel2(idCard);
        Integer level3 = Util.getWithSum(Util.getWithSum(Integer.parseInt(idCard.substring(6,14))));
        Map<String,Object> res = new HashMap<>();
        res.put("level1",level1);
        res.put("level2",level2);
        res.put("level3",level3);
        return res;
    }

    @RequestMapping("test")
    public String test(){
        System.out.println(lifeDao.findByName("肝"));
        return "index";
    }
    @GetMapping("hello")
    public String hello(){
        System.out.println("test");
        return "home";
    }

    @GetMapping("/getBasic")
    public String basic(Model model, @RequestParam("idCard") String idCard){
        String res = Util.getNowDayDL(idCard);
        Calendar cal=Calendar.getInstance();
        Integer nowYear = cal.get(Calendar.YEAR);
        Integer nowMonth = cal.get(Calendar.MONTH) + 1;
        Integer nowDay = cal.get(Calendar.DATE);

        String nowDate = nowYear+"年"+nowMonth+"月"+nowDay+"日";

        //获得衣食住行
        LifeEo lifeEo = lifeDao.findByName(res);
        System.out.println(lifeEo.toString());
        model.addAttribute("res",res);
        model.addAttribute("life",lifeEo);
        model.addAttribute("nowDate",nowDate);
        return "desc";
    }

}
