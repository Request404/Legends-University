package com.legends.universe.mapper;

import com.legends.universe.bean.UserProfile;
import com.legends.universe.bean.UserPurchaseHistory;
import com.legends.universe.bean.UserStar;

import java.util.List;

public interface UserMapper {

    //查询用户是否存在
    public UserProfile userIsExist(String username);
    //按照name查询用户
    public UserProfile getUserByName(String username);
    //按照用户名密码获取用户
    public UserProfile getUserByNameAndPassword(UserProfile userProfile);
    //按照用户名，邮箱查询用户
    public UserProfile getUserWithNameAndEmail(UserProfile userProfile);
    //更新用户密码
    public boolean updateUserPassword(UserProfile userProfile);
    //按照名字更新用户
    public boolean updateUserByName(UserProfile userProfile);
    //添加用户
    public boolean insertUser(UserProfile user);

    //按照用户名查询购买历史
    public List<UserPurchaseHistory> getUserPurchaseByUser(String username);
    //添加购买历史
    public boolean insertPurchaseHistory(UserPurchaseHistory userPurchaseHistory);

    //按照用户名查询star
    public List<UserStar> getUserStarByUser(String username);
//    public List<UserStar> getUserStar(String username);
    //添加star
    public boolean insertUserStar(UserStar userStar);
    //取消stat
    public boolean cancelUserStar(UserStar userStar);
}
