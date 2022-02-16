package com.noorteck.qa.utils;

import org.openqa.selenium.WebDriver;

import com.noorteck.qa.pages.CommonElementPage;
import com.noorteck.qa.pages.JobTitlesPage;
import com.noorteck.qa.pages.LoginPage;
import com.noorteck.qa.pages.MenuPage;
import com.noorteck.qa.pages.SalaryComponentsPage;
import com.noorteck.qa.pages.SkillsPage;

import io.restassured.path.json.JsonPath;



/**
 * In this class we declare our objects that will be shared among different classes
 * @author NoorTeck
 *
 */
public class Constants {
	
	
	public static WebDriver driver;
	public static JsonPath jsonPath;

	//declare class objects and common objects
	public static LoginPage loginObj;
	public static MenuPage menuObj;
	public static JobTitlesPage jobTitlesObj;
	public static CommonElementPage commonObj;
	public static SalaryComponentsPage salCompObj;
	public static SkillsPage skillsObj;
	
	public static String valueUpdated;

}
 