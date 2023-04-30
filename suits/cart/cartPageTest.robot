*** Settings ***
Documentation      Cart Page Scenarios
Resource      C:/Users/Administrator/PycharmProjects/sauceDemoProject/config/common_resource.txt

Test Setup      Open SauceDemo Website
Test Teardown      Close Browser
*** Test Cases ***
Verify That User Will Be Able To Add Product In A Cart
      [Documentation]      Add Product In A Cart
      Login To SwagLabs      standard_user      secret_sauce
      Add Product In A Cart

Verify That User Will Be Able To Remove Product From A Cart
      [Documentation]      Remove Product From A Cart
      Login To SwagLabs      standard_user      secret_sauce
      Add Product In A Cart
      Remove Product From Cart

Verify That User Will Be Redirected Back To Products Page
      [Documentation]      Redirect to Product Page From A Cart
      Login To SwagLabs      standard_user      secret_sauce
      Add Product In A Cart
      Go Back To Products Page

Verify That User Will Be Redirected To Checkout Page
      [Documentation]      Redirect to Checkout Page From A Cart
      Login To SwagLabs      standard_user      secret_sauce
      Add Product In A Cart
      Proceed To Checkout Page