package win.mdear.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "customers", catalog = "shiyan")
public class Customer implements java.io.Serializable {

	// Fields

	private String userId = "";        //用户ID
	private String userName = "";      //用户名
	private String pwd = "";           //密码
	private String nickName = "";      //昵称
	private String phone = "";         //电话
	private String email = "";         //邮箱
	private String qqnumber = "";      //QQ
	private String address = "";       //地址
	private String realName = "";      //真实姓名
	private String identityCard = "";  //身份证
	private Integer status = 0;        //状态
	private Integer vip = 0;           //等级
	private Integer gender;            //性别
	private String remark = "";        //备注
	
	
	// Constructors

	/** default constructor */
	public Customer() {
	}

	/** full constructor */
	public Customer(String userId, String userName, String pwd, String nickName, String phone, 
			String email, String qqnumber, String address, String realName, String identityCard, 
			String remark, Integer status, Integer vip, Integer gender) {
		this.userId = userId;
		this.userName = userName;
		this.pwd = pwd;
		this.nickName = nickName;
		this.phone = phone;
		this.email = email;
		this.qqnumber = qqnumber;
		this.address = address;
		this.realName = realName;
		this.identityCard = identityCard;
		this.remark = remark;
		this.status = status;
		this.vip = vip;
		this.gender = gender;
	}

	// Property accessors
	@Id
	@Column(name = "userid", length = 50, unique = true, nullable = false)
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	@Column(name = "userName", length = 50)
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "pwd", length = 50)
	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	@Column(name = "nickName", length = 50)
	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	@Column(name = "phone", length = 50)
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "email", length = 50)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "qqnumber", length = 50)
	public String getQQnumber() {
		return qqnumber;
	}

	public void setQQnumber(String qQnumber) {
		qqnumber = qQnumber;
	}

	@Column(name = "address", length = 50)
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "realName", length = 50)
	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	@Column(name = "identityCard", length = 50)
	public String getIdentityCard() {
		return identityCard;
	}

	public void setIdentityCard(String identityCard) {
		this.identityCard = identityCard;
	}

	@Column(name = "remark", length = 50)
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	@Column(name = "status")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	@Column(name = "vip")
	public Integer getVip() {
		return this.vip;
	}
	
	public void setVip(Integer vip) {
		this.vip = vip;
	}

	@Column(name = "gender")
	public Integer getGender() {
		return this.gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}
}