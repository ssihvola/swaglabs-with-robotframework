*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Login
    Open Browser   url=https://www.saucedemo.com/   browser=chrome
		Input Text   user-name   standard_user
		Input Text   password   secret_sauce
		Click Link   Login
		Wait Until Page Contains   Sauce Labs Backpack
		Page Should Contain   Sauce Labs Backpack
		Close Browser