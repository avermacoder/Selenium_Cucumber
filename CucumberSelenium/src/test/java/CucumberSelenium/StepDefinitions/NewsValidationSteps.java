package CucumberSelenium.StepDefinitions;

import java.util.List;

import org.junit.Assert;

import CucumberSelenium.Pages.BaseTest;
import CucumberSelenium.Pages.NewsHomePage;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class NewsValidationSteps extends BaseTest{
	
	String news_article_title_on_guardian_news;
	
	
	@Given("I have opened the guardian news portal")
	public void i_have_opened_the_guardian_news_portal(){	
		NewsHomePage newsHomePage = new NewsHomePage(driver);
		openBrowserMaximized();
		newsHomePage.openNewsPortal();
	}
	
	@When("I try to validate the news authenticity on google")
	public void i_try_to_validate_the_news_authenticity_on_google() {
		NewsHomePage newsHomePage = new NewsHomePage(driver);
		String news_article_title_on_guardian_news = newsHomePage.getFirstNewsArticle();
		newsHomePage.searchNewsArticleOnGoogle(news_article_title_on_guardian_news);
	}

	@Then("I should see the news is valid")
	public void i_should_see_the_news_is_valid() {
		NewsHomePage newsHomePage = new NewsHomePage(driver);
		List<String> searched_results_on_google = newsHomePage.getNewsArticleSearchResultsFromGoogle();
		List<String> searched_site_name_on_google = newsHomePage.getNewsSitesSearchedOnGoogle();
		for(int i=0; i<searched_results_on_google.size();i++) {
			Assert.assertTrue("News is invalid when searched on google", searched_results_on_google.get(i).contains(news_article_title_on_guardian_news));
			Assert.assertFalse("Same news is found inside www.theguardian.com", searched_site_name_on_google.get(i).contains("www.theguardian.com"));
		}
	}

	@Then("I should see the news is invalid")
	public void i_should_see_the_news_is_invalid() {
		NewsHomePage newsHomePage = new NewsHomePage(driver);
		List<String> searched_results_on_google = newsHomePage.getNewsArticleSearchResultsFromGoogle();
		for(int i=0; i<searched_results_on_google.size();i++) {
			Assert.assertFalse("Valid news found on google search", searched_results_on_google.get(i).contains(news_article_title_on_guardian_news));
		}
	}

	@When("I try to validate the news authenticity on other big news portal")
	public void i_try_to_validate_the_news_authenticity_on_other_big_news_portal() {
		NewsHomePage newsHomePage = new NewsHomePage(driver);
		List<String> searched_results_on_big_news_portal = newsHomePage.getNewsArticleFromOtherNewsPortal();
		for(int i=0; i<searched_results_on_big_news_portal.size();i++) {
			Assert.assertTrue("News is invalid when searched on other big news portal", searched_results_on_big_news_portal.get(i).contains(news_article_title_on_guardian_news));
		}
	}

}
