*** Settings ***
Documentation      Checkout Page Scenarios
Resource      C:/Users/Administrator/PycharmProjects/sauceDemoProject/config/common_resource.txt

Test Setup      Login To SauceDemo And Procced To Cart Page
Test Teardown      Close Browser
*** Test Cases ***
Verify That User Will Be Able To Proceed To Checkout Overview Page
      [Documentation]      Verify user is navigating to checkout page
      Proceed To Checkout Overview Page      testuser      surname      12345

Verify That User Will Be Able To Proceed To Cart Page
      [Documentation]      Verify user is navigating to cart page
      Go Back To Cart Page

Verify That Error Message Is Displayed For Blank First Name
      [Documentation]      Verify error message for blank first name
      Error Message For Blank First Name      testuser     12345

Verify That Error Message Is Displayed For Blank Last Name
      [Documentation]      Verify error message for blank last name
      Error Message For Blank Last Name      testuser     12345

Verify That Error Message Is Displayed For Postal Code
      [Documentation]      Verify error message for blank Postal Code
      Error Message For Blank Postal Code      testuser     surname

