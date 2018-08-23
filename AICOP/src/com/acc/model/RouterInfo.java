package com.acc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ROUTER")
public class RouterInfo {

	
	private String viewFiledName;
	
	private String dataSource;
	
	private int sourceId;

	@Id
	@Column(name="view_field_name")
	public String getViewFiledName() {
		return viewFiledName;
	}

	public void setViewFiledName(String viewFiledName) {
		this.viewFiledName = viewFiledName;
	}
	
	@Id
	@Column(name="source_name")
	public String getDataSource() {
		return dataSource;
	}

	public void setDataSource(String dataSource) {
		this.dataSource = dataSource;
	}

	@Id
	@Column(name="source_id")
	public int getSourceId() {
		return sourceId;
	}

	public void setSourceId(int sourceId) {
		this.sourceId = sourceId;
	}

	@Override
	public String toString() {
		return "RouterInfo [viewFiledName=" + viewFiledName + ", dataSource=" + dataSource + ", sourceId=" + sourceId
				+ "]";
	}
	
	
	
	
}
