package com.acc.service;

import com.acc.bean.UserBean;

public interface LoginService {

	boolean authenticateUser(UserBean userBean);
}
