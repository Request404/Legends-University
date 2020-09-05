package com.legends.universe.controller;

import com.legends.universe.bean.UserProfile;
import com.legends.universe.bean.UserPurchaseHistory;
import com.legends.universe.bean.UserStar;
import com.legends.universe.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@CrossOrigin
@RequestMapping("profile")
public class UserController {

    @Autowired
    UserMapper userMapper;

    @GetMapping("userIsExist")
    public boolean userIsExist(String username){
        UserProfile userProfile = userMapper.userIsExist(username);
        if(userProfile!=null){ return true; } else { return false; }
    }

    @GetMapping("getUserByName")
    public UserProfile getUserByName(String username){
        return userMapper.getUserByName(username);
    }


    @PostMapping("getUserByNameAndPassword")
    public UserProfile getUserByNameAndPassword(@RequestBody UserProfile userProfile){
        return userMapper.getUserByNameAndPassword(userProfile);
    }

    @PostMapping("getUserWithNameAndEmail")
    public boolean getUserWithNameAndEmail(@RequestBody UserProfile userProfile){
        UserProfile user = userMapper.getUserWithNameAndEmail(userProfile);
        if (user!=null){ return true; }else { return false; }
    }

    @PostMapping("updateUserPassword")
    public boolean updateUserPassword(@RequestBody UserProfile userProfile){
        return userMapper.updateUserPassword(userProfile);
    }

    @PostMapping("updateUserByName")
    public boolean updateUserByName(@RequestBody UserProfile userProfile){
        return userMapper.updateUserByName(userProfile);
    }

    @PostMapping("insertUser")
    public boolean insertUser(@RequestBody UserProfile userProfile){
        System.out.println(userProfile);
        return userMapper.insertUser(userProfile);
    }

    @GetMapping("getUserPurchaseByUser")
    public List<UserPurchaseHistory> getUserPurchaseByUser(String username){
        return userMapper.getUserPurchaseByUser(username);
    }

    @PostMapping("insertPurchaseHistory")
    public boolean insertPurchaseHistory(@RequestBody UserPurchaseHistory userPurchaseHistory){
        return userMapper.insertPurchaseHistory(userPurchaseHistory);
    }

    @GetMapping("getUserStarByUser")
    public List<UserStar> getUserStarByUser(String username){
        return userMapper.getUserStarByUser(username);
    }
//    @GetMapping("getUserStar")
//    public List<UserStar> getUserStar(String username){
//        return userMapper.getUserStar(username);
//    }

    @PostMapping("insertUserStar")
    public boolean insertUserStar(@RequestBody UserStar userStar){
        return userMapper.insertUserStar(userStar);
    }

    @PostMapping("cancelUserStar")
    public boolean cancelUserStar(@RequestBody UserStar userStar){
        return userMapper.cancelUserStar(userStar);
    }
}
