package com.noorteck.qa.utils;

import java.io.FileInputStream;
import io.restassured.path.json.JsonPath;

public class ReadJsonFile {

	/**
	 * This method takes json file name and returns as jsonPath object
	 * 
	 * @param fileName
	 * @return
	 */
	public static JsonPath loadJsonFile(String fileName) {
		JsonPath jsonPath = null;
		try {
			FileInputStream file = new FileInputStream("./src/test/resources/config/" + fileName + ".json");
			jsonPath = new JsonPath(file);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonPath;
	}
}
