package com.noorteck.qa.steps;

import java.util.List;
import java.util.Map;

import com.noorteck.qa.utils.CommonLibrary;

//import org.testng.Assert;

import com.noorteck.qa.utils.CommonUI;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class CommonStepDef extends CommonUI {
	
	@Given(".* click \"(.*)\"$")
	public void click(String element) {

		if (element.contains("common")) {
			commonObj.click(element);
		} else if (element.contains("login")) {
			loginObj.click(element);
		} else if (element.contains("menu")) {
			menuObj.navigateTo(element);
		} else if (element.contains("salaryComp")) {
			salCompObj.click(element);
		} else if (element.contains("jobTitles")) {
			jobTitlesObj.click(element);
		}

	}

	@Given(".* enterValue \"(.*)\" \"(.*)\"$")
	public void enterValue(String element, String value) {
		valueUpdated = CommonLibrary.randomStringGenerator(value);
		
		if (element.contains("jobTitles")) {
			jobTitlesObj.enter(element, valueUpdated);
		} else if (element.contains("salaryComp")) {
			salCompObj.enter(element, valueUpdated);
		} else if ( element.contains("skills")) {
			skillsObj.enter(element, valueUpdated);
		}
	}

	@Given("User is logged into NTK application {string}")
	public void login(String region) {
		
		System.out.println(jsonPath.getString(region));
		navigate(jsonPath.getString(region + ".url"));
		loginObj.enter("login.username", jsonPath.getString(region + ".username"));
		loginObj.enter("login.password", jsonPath.getString(region + ".password"));
		loginObj.click("login.loginButton");

//		navigate("https://ntkqa-trials73.orangehrmlive.com/");
//		loginObj.enter("login.username", "Admin");
//		loginObj.enter("login.password", "H0q@c9MhVL");
//		loginObj.click("login.loginButton");

	}

	@Then("System displays message {string}")
	public void verifyMessage(String expected) {
		String actual = commonObj.getMessage(expected);
		// Assert.assertEquals(actual, expected);
	}

	@Then(".* verify \"(.*)\" \"(.*)\"$")
	public void verifyHeader(String element, String expHeader) {

		String actHeader = null;
		if (element.contains("jobTitles")) {
			actHeader = jobTitlesObj.getPageTitle();
		} else if (element.contains("salaryComp")) {
			actHeader = salCompObj.getPageTitle();
		}

		System.out.println("EXP: " + expHeader);
		System.out.println("ACT: " + actHeader);

	}

	@When(".* selectOption$")
	public void user_selects_add_to_options_select_option(DataTable dataTable) {

		// Converting dataTabale that is coming from FEATURE FILE to List of Maps
		List<Map<String, String>> listMap = dataTable.asMaps();

		for (Map<String, String> map : listMap) {

			for (Map.Entry<String, String> entry : map.entrySet()) {

				String key = entry.getKey();
				String value = entry.getValue();

				if (value == null) {
					continue;
				}
				System.out.println("VALUE: " + value);
				if (value.contains("salaryComp")) {
					salCompObj.click(value);
				}
				 
			}

		}

	}

}
