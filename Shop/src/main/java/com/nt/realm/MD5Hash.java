package com.nt.realm;

import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;

import com.nt.pojo.User;

public class MD5Hash{
	public static User encryption(User agouser) {
		User afteruser=new User();
		afteruser=agouser;
		String salt =new SecureRandomNumberGenerator().nextBytes().toString();
		afteruser.setSalt(salt); //�������
		afteruser.setUserpwd(new SimpleHash("md5",agouser.getUserpwd(),salt,2).toString());
		//afteruser.setUseremail(new SimpleHash("md5",agouser.getUseremail(),salt,2).toString());
		return afteruser;		
	}
	
	
    @SuppressWarnings("unused")
	private static boolean hasRole(User user, String role) {
		Subject subject = getSubject(user);
		return subject.hasRole(role);
	}
	@SuppressWarnings("unused")
	private static boolean isPermitted(User user, String permit) {
		Subject subject = getSubject(user);
		return subject.isPermitted(permit);
	}

	private static Subject getSubject(User user) {
		//加载配置文件，并获取工厂
		Factory<SecurityManager> factory = new IniSecurityManagerFactory("classpath:shiro.ini");
		//获取安全管理者实例
		SecurityManager sm = factory.getInstance();
		//将安全管理者放入全局对象
		SecurityUtils.setSecurityManager(sm);
		//全局对象通过安全管理者生成Subject对象
		Subject subject = SecurityUtils.getSubject();
		

		return subject;
	}
    public static boolean login(User user) {
		Subject subject= getSubject(user);
		//如果已经登录过了，退出
		if(subject.isAuthenticated())
			subject.logout();
		
		//封装用户的数据
		UsernamePasswordToken token = new UsernamePasswordToken(user.getUseremail(), user.getUserpwd());
		try {
			//将用户的数据token 最终传递到Realm中进行对比
			subject.login(token);
		} catch (AuthenticationException e) {
			//验证错误
			return false;
		}				
		
		
		return subject.isAuthenticated();
	}
}
