package CucumberSelenium.Pages.Helper;

import java.time.Duration;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class ReusableMethods {	
	/**
	 * @author Aditya Paliwal
	 * @description This method will wait until element is visible
	 * @param driver
	 */
	public static void visibilityOfElementLocated(By locator, int timeout, WebDriver driver) {
		WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(timeout));
		wait.until(ExpectedConditions.visibilityOfElementLocated(locator));
	}
	
//	public WebElement waitForElementToAppear(By elepath) {
//		WebElement ele = wait.until(ExpectedConditions.visibilityOfElementLocated(elepath));
//		return ele;
//	}


}
