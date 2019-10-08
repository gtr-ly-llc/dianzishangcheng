package com.nt.realm;
 
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.nt.service.PermissionService;
import com.nt.service.RoleService;
import com.nt.pojo.User;
import com.nt.service.UserService;
 
public class DatabaseRealm extends AuthorizingRealm {
	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;
	@Autowired
	private PermissionService permissionService;
	@Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        System.out.println("!!!!!!!!!!!!!!!!!!!!!!!");
        //能进入到这里，表示账号已经通过验证了
        String userName =(String) principalCollection.getPrimaryPrincipal();
        //通过DAO获取角色和权限
        Set<String> permissions = permissionService.listPermissions(userName);
		Set<String> roles = roleService.listRoles(userName);
        //授权对象
        SimpleAuthorizationInfo s = new SimpleAuthorizationInfo();
        //把通过DAO获取到的角色和权限放进去
        s.setStringPermissions(permissions);
        s.setRoles(roles);
        return s;
    }
 
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
    	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
    	System.out.println(this.getCredentialsMatcher());
        //获取账号密码
        UsernamePasswordToken t = (UsernamePasswordToken) token;
        String useremail= token.getPrincipal().toString();
        //String userpwd= new String( t.getPassword());
        //获取数据库中的密码
         
        User user = userService.getUser(useremail);
        String passwordInDB = user.getUserpwd();
        String salt = user.getSalt();
        //如果为空就是账号不存在，如果不相同就是密码错误，但是都抛出AuthenticationException，而不是抛出具体错误原因，免得给破解者提供帮助信息
      	//if(null==passwordInDB) throw new AuthenticationException();
        //认证信息里存放账号密码, getName() 是当前Realm的继承方法,通常返回当前类名 :databaseRealm
        //盐也放进去
        //这样通过shiro.ini里配置的 HashedCredentialsMatcher 进行自动校验
        SimpleAuthenticationInfo a = new SimpleAuthenticationInfo(useremail,passwordInDB,ByteSource.Util.bytes(salt),getName());
        System.out.println(a.toString());
        return a;
    }
}