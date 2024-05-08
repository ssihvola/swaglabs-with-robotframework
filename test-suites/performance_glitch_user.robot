*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Login
    Open Browser   url=https://www.saucedemo.com/   browser=chrome
		Input Text   user-name   ${USERNAME} 
		Input Text   password   ${PASSWORD} 
		Click Button   class:submit-button
		Wait Until Page Contains   Sauce Labs Backpack
		Page Should Contain   Sauce Labs Backpack

Add product to cart
    Click Button   add-to-cart-sauce-labs-backpack
    Wait Until Page Contains Element   class:shopping_cart_badge   1

Remove product from cart
    Click Button   remove-sauce-labs-backpack
		Wait Until Page Does Not Contain Element   class:shopping_cart_badge

Add all products to cart
    Click Button   add-to-cart-sauce-labs-backpack
		Click Button   add-to-cart-sauce-labs-bike-light
		Click Button   add-to-cart-sauce-labs-bolt-t-shirt
		Click Button   add-to-cart-sauce-labs-fleece-jacket
		Click Button   add-to-cart-sauce-labs-onesie
		Click Button   add-to-cart-test.allthethings()-t-shirt-(red)
		Wait Until Page Contains Element   class:shopping_cart_badge   6

Remove products from cart before checkout
    Click Button   remove-sauce-labs-bike-light
		Click Button   remove-sauce-labs-bolt-t-shirt
		Click Button   remove-sauce-labs-fleece-jacket
		Click Button   remove-sauce-labs-onesie
		Click Button   remove-test.allthethings()-t-shirt-(red)
		Wait Until Page Contains Element   class:shopping_cart_badge   1

Checkout
    Click Link   class:shopping_cart_link
		Click Button   checkout
		Wait Until Page Contains   Checkout: Your Information
		Page Should Contain   Checkout: Your Information

Incorrect information
    Click Button   continue
		Wait Until Page Contains   Error: First Name is required
		Page Should Contain   Error: First Name is required

Correct information
    Input Text   firstName   robot
		Input Text   lastName   framework
		Input Text   postalCode   00100
		Click Button   continue
		Wait Until Page Contains   Checkout: Overview
		Page Should Contain   Checkout: Overview

Finalize order
    Click Button   finish
		Wait Until Page Contains   Thank you for your order!
		Page Should Contain   Thank you for your order!

Return to homepage
    Click Button   back-to-products
		Wait Until Page Contains   Products
		Wait Until Page Does Not Contain Element   class:shopping_cart_badge

*** Variables ***
${USERNAME}   performance_glitch_user
${PASSWORD}   secret_sauce
