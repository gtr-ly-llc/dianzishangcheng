package com.nt.pojo;

public class User {
	private int userid;
	private String useremail;
	private String userpwd;
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
	@Override
    public String toString() {
        return "User [userid=" + userid + ", useremail=" + useremail + ", userpwd="+ userpwd +"]";
    }
}
