package com.nt.realm;

import org.apache.shiro.realm.AuthenticatingRealm;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * SecurityManager会到该Reaml获取安全数据.
 * @author ZHUANGHAOTANG
 *
 */
public class AuthenticationRealm {//extends AuthenticatingRealm {

//    @Autowired
//    private UserService userService;
//    
//    /**
//     * 获取Reaml中数据的方法,返回AuthencationInfo存放安全数据,供SecurityManager使用.
//     */
//    @Override
//    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
//        //获取用户填写的用户名
//        String username = ((UsernamePasswordToken)token).getUsername();
//        //根据用户名查询数据库用户表的记录.
//        User user = userService.findByOne(username);
//        //若不存在此用户,则手动抛出未知身份异常.
//         if(user == null){
//            throw new UnknownAccountException();
//        }else{
//            //返回AuthencationInfo接口类型,使用SimpleAuthenticationInfo实现类,参数是AuthenticationToken传递的用户名、通过用户名查询的密码、Realm的名称.
//            return new SimpleAuthenticationInfo(username, user.getPassword(),this.getName());
//        }
//    }

}
