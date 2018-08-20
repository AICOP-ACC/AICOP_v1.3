package com.acc.dao;

import java.util.List;

import com.acc.bean.UserBean;

public interface LoginDao {
	List<UserBean> getUserForUserId(UserBean userBean);
}
