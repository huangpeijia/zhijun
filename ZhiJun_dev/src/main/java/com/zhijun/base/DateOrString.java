package com.zhijun.base;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateOrString {
	public String Or(Date time) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.format(time);
	}
}
