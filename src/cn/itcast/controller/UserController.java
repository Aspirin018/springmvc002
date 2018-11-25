package cn.itcast.controller;

import cn.itcast.domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by liyu on 2018/1/27.
 */
@Controller
@RequestMapping("user")
public class UserController {

    @RequestMapping("hello")
    public String myHello(){
        return "hello";
    }

    @RequestMapping("list")
    public String list(Model model){
        List<User> list = new ArrayList<>();
        User user = new User();
        user.setId(1);
        user.setUsername("liyu");
        user.setAge("18");
        User user2 = new User();
        user2.setId(2);
        user2.setUsername("liyu2");
        user2.setAge("19");
        list.add(user);
        list.add(user2);
        model.addAttribute("userList", list);
        return "list";
    }

    @RequestMapping("update/{id}")
    public String update(@PathVariable Integer id){
        return "redirect:list.do";
    }

    @RequestMapping("toJson")
    public String toJson(){
        return "requestJson";
    }

    @RequestMapping("requestJson")
    public @ResponseBody User requestJson(@RequestBody User user){
        System.out.println(user);
        return user;
    }

    @RequestMapping("requestPOJO")
    public @ResponseBody User requestPOJO( User user){
        System.out.println(user);
        return user;
    }

    @RequestMapping("multiView")
    public User multiView(){
        User user = new User();
        user.setId(1);
        user.setUsername("liyu");
        user.setAge("18");
        return user;
    }



}
