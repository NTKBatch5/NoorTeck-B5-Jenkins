package com.noorteck.qa.utils;

import org.apache.commons.lang.RandomStringUtils;

public class CommonLibrary {
	

	
	public static String randomStringGenerator(String str) {	
		String generatedString = RandomStringUtils.randomAlphabetic(5);	
		str = str+generatedString;	
		return str;
	}

}
