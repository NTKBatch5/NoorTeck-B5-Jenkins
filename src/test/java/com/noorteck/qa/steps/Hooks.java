package com.noorteck.qa.steps;

import com.noorteck.qa.utils.CommonUI;
import com.noorteck.qa.utils.Constants;
import com.noorteck.qa.utils.ObjInitialize;
import com.noorteck.qa.utils.ReadJsonFile;

import io.cucumber.java.After;
import io.cucumber.java.Before;

public class Hooks {

	@Before
	public void setUp() {
		CommonUI.openBrowser("chrome");
		Constants.jsonPath = ReadJsonFile.loadJsonFile("Region");
		ObjInitialize.initializeClassObj();
	}

	@After
	public void tearDown() {
		CommonUI.quitBrowser();
	}

}
