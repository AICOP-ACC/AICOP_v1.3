package com.acc.dao;
import java.util.List;

import com.acc.bean.SuggestedActionBean;

public interface ActionDao {

	List<SuggestedActionBean> getSuggestedAction();
}
