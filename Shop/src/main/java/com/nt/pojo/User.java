package com.nt.pojo;

public class User {
	private int userid;
	private String useremail;
	private String userpwd;
	private String salt;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	@Override
    public String toString() {
        return "User [userid=" + userid + ", useremail=" + useremail + ", userpwd="+ userpwd +"]";
    }
}
