# Introduction

This project is about testing a dummy online shop at https://www.saucedemo.com/. It is possible to log in with six different accounts, each of which has certain faults and behaviors. 

The objective is to determine if the ordering process functions consistently across all accounts. The goal is achieved through the use of E2E testing methodology.

# Test environment

Test automation: Robot Framework  
Browser: Google Chrome  
OS: Xubuntu  
Hardware: Lenovo Thinkpad X1 Carbon  
Processor: Intel Core i7  

# Test suites

Each available account represents a test suite.

standard_user  
locked_out_user  
problem_user  
performance_glitch_user  
error_user  
visual_user  

Password for all accounts: secret_sauce

# Test cases

Login

    Scenario: Log in with correct password
    Acceptance Criteria: Successfully log in

Add product to cart

    Scenario: Add a product to the cart by clicking the "Add to cart" button
    Acceptance Criteria: Product appears in the cart

Remove product from cart

    Scenario: Remove a product from the cart by clicking the "Remove" button
    Acceptance Criteria: Product is removed from the cart

Add all products to cart

    Scenario: Add all products to the cart by clicking the "Add to cart" buttons for each product
    Acceptance Criteria: All products are visible in the cart

Remove products from cart before checkout

    Scenario: Remove all but one product from the cart before proceeding to checkout
    Acceptance Criteria: All desired products are removed, leaving only one product in the cart

Checkout

    Scenario: Click the checkout button and proceed to order
    Acceptance Criteria: Order details form opens

Incorrect information

    Scenario: Click "Continue" button without entering information
    Acceptance Criteria: "Error: First Name is required"

Correct information

    Scenario: Enter correct order information and click "Continue"
    Acceptance Criteria: Order summary is displayed

Finalize order

    Scenario: Click "Finish" button
    Acceptance Criteria: Message: "Thank you for your order"

Return to homepage

    Scenario: Click "Back Home" button without any items in the cart
    Acceptance Criteria: Return to the homepage without any items in the cart