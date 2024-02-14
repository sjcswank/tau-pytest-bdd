import pytest
from pytest_bdd import scenarios, given, when, then, parsers
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys



# DUCKDUCKGO_HOME = 'https://duckduckgo.com/'
from tests.step_defs.conftest import DUCKDUCKGO_HOME

scenarios('../features/web.feature')


@given('the DuckDcukGo homepage is displayed', target_fixture='ddg_home')
def ddg_home(browser):
    browser.get(DUCKDUCKGO_HOME)


@when(parsers.parse('a user searches for "{text}"'))
@when(parsers.parse('a user searches for the phrase:\n"""{text}"""'))
def search(browser, text):
    search_input = browser.find_element(By.NAME, 'q')
    search_input.send_keys(text + Keys.RETURN)


@then(parsers.parse('results for "{phrase}" are displayed'))
def search_results(browser, phrase):
    assert len(browser.find_elements(By.CSS_SELECTOR, '[data-testid="result"]')) > 0
    search_input = browser.find_element(By.NAME, 'q')
    assert search_input.get_attribute('value') == phrase


@then(parsers.parse('one of the results contains "{phrase}"'))
def results_have_one(browser, phrase):
    xpath = "//*[@data-testid='result']//*[contains(text(), '%s')]" % phrase
    results = browser.find_elements(By.XPATH, xpath)
    assert len(results) > 0
