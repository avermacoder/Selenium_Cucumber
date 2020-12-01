package CucumberSelenium.Pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class BaseTest {
	protected WebDriver driver;
	
	/**
	 * @author Aditya Paliwal
	 * @description This method will initialize, open and maximize the browser
	 * @param driver
	 */
	public void openBrowserMaximized(){
		
		System.setProperty("webdriver.chrome.driver", System.getProperty("user.dir")+"\\src\\test\\Driver\\Chrome\\chromedriver.exe");
		driver = new ChromeDriver();
		driver.manage().window().maximize();
		System.out.println("Browser Launched Successfully");
	}
	
	
}
