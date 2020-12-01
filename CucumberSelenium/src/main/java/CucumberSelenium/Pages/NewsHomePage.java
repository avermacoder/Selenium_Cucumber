package CucumberSelenium.Pages;


import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import CucumberSelenium.Pages.Helper.ReusableMethods;


public class NewsHomePage{
	WebDriver driver;
	
	By lbl_guardian_logo = By.xpath("//a[@class='new-header__logo']");
	By lbl_first_news_article = By.xpath("//div/h1[contains(.,'News')]/following::li[1]//a[contains(@class,'headline-text')]");
	By lbl_other_news_sites_on_google = By.xpath("//a/div/cite");
	By lbl_other_news_article_results_on_google = By.xpath("//div[@class='g']/div//span[@class='aCOpRe']");
	By lbl_news_from_other_portal = By.xpath("");

	/**
	 * @author Aditya Paliwal
	 * @description Constructor for Guardian NewsHomePage
	 * @param driver
	 */
	public NewsHomePage(WebDriver driver) {
		this.driver = driver;
	}
	
	/**
	 * @author Aditya Paliwal
	 * @description This method will open the Guardian News Portal
	 * @param driver
	 */
	public void openNewsPortal() {
		driver.get("https://www.theguardian.com/tone/news");
		ReusableMethods.visibilityOfElementLocated(lbl_guardian_logo, 10, driver);
		
	}
	
	/**
	 * @author Aditya Paliwal
	 * @description This method will search the first news article from Guardian News Portal on Google
	 * @param driver
	 */
	public void searchNewsArticleOnGoogle(String text) {
		((JavascriptExecutor) driver).executeScript("window.open(arguments[0])", text);
		//switch to new window and tyoe the news that we want to search on google
		driver.switchTo().window((String)driver.getWindowHandles().toArray()[1]);
	}

	/**
	 * @author Aditya Paliwal
	 * @description This method will get the first news article text from Guardian News Portal
	 * @param driver
	 */
	public String getFirstNewsArticle() {
		ReusableMethods.visibilityOfElementLocated(lbl_first_news_article, 10, driver);
		String news_title = driver.findElement(lbl_first_news_article).getText();
		return news_title;	
	}
	
	/**
	 * @author Aditya Paliwal
	 * @description This method will get the news article results found on Google search
	 * @return List of Strings of the search results
	 * @param driver
	 */
	public List<String> getNewsArticleSearchResultsFromGoogle() {
		ReusableMethods.visibilityOfElementLocated(lbl_other_news_article_results_on_google, 10, driver);
		List<WebElement> news_article_google_search_ele = driver.findElements(lbl_other_news_article_results_on_google);
		List<String> news_article_google_search = new ArrayList<String>();
		for(WebElement ele:news_article_google_search_ele) {
			news_article_google_search.add(ele.getText());
		}
		return news_article_google_search;	
	}
	
	/**
	 * @author Aditya Paliwal
	 * @description This method will get the news article results site name found on Google search
	 * @return List of Strings of the search news site names
	 * @param driver
	 */
	public List<String> getNewsSitesSearchedOnGoogle() {
		List<WebElement> news_sites_name_ele = driver.findElements(lbl_other_news_sites_on_google);
		List<String> news_sites_name = new ArrayList<String>();
		for(WebElement ele:news_sites_name_ele) {
			news_sites_name.add(ele.getText());
		}
		return news_sites_name;	
	}

	/**
	 * @author Aditya Paliwal
	 * @description This method will get the news article results found on Other Big News Portal
	 * @return List of Strings of the search results
	 * @param driver
	 */
	public List<String> getNewsArticleFromOtherNewsPortal() {
		ReusableMethods.visibilityOfElementLocated(lbl_news_from_other_portal, 10, driver);
		List<WebElement> news_article_google_search_ele = driver.findElements(lbl_news_from_other_portal);
		List<String> news_article_google_search = new ArrayList<String>();
		for(WebElement ele:news_article_google_search_ele) {
			news_article_google_search.add(ele.getText());
		}
		return news_article_google_search;	
	}
	
	
	

}
