package com.idateal.netlife.rest;

import com.idateal.netlife.util.Util;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/**
 * @Author: antony
 * @Date: 2019-06-25 11:04
 * @description:
 */
@Controller
@CrossOrigin
public class LifeController {

    @PostMapping("feature")
    @ResponseBody
    public Object feature(@RequestParam("idCard") String idCard){
        System.out.println(idCard);
        char[] level1 = Util.getLevel1(idCard);
        char[] level2 = Util.getLevel2(idCard);
        Integer level3 = Util.getLevel3(idCard);
        Map<String,Object> res = new HashMap<>();
        res.put("level1",level1);
        res.put("level2",level2);
        res.put("level3",level3);
        return res;
    }

    @RequestMapping("test")
    public String test(){
        System.out.println("test");
        return "index";
    }

}
