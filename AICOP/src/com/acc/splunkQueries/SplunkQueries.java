package com.acc.splunkQueries;

public class SplunkQueries {

	public static String HEALTH_CHECK_QUERY = " search index=\"healthcheck\" | table Application status";
}
