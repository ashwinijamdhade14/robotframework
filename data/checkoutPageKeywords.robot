*** Settings ***
Documentation      CheckoutPage Scenarios
Resource      C:/Users/Administrator/PycharmProjects/sauceDemoProject/config/common_resource.txt


*** Keywords ***
Login To SauceDemo And Procced To Cart Page
      [Documentation]      Login To SauceDemo And Procced To Cart Page
      Open SauceDemo Website
      Login To SwagLabs      standard_user      secret_sauce
      Add Product In A Cart
      Proceed To Checkout Page

Enter Personal Information
      [Documentation]      Enter Personal Information On Checkout Page
      [Arguments]     ${fname}      ${lname}      ${postal}
      Input Text      ${first_name}    ${fname}
      Input Text      ${last_name}     ${lname}
      Input Text      ${postal_code}      ${postal}

Proceed To Checkout Overview Page
      [Documentation]      Proceed To Checkout Overview Page From Checkout Page
      [Arguments]     ${fname}      ${lname}      ${postal}
      Enter Personal Information     ${fname}      ${lname}      ${postal}
      Click Element      ${continue_button}
      ${overview}=      Get Text      ${checkout_overview_lable}
      Should Be Equal      ${overview}      Checkout: Overview

Go Back To Cart Page
      [Documentation]      Go Back To Cart Page From Checkout Page
      Click Element      ${cancel_button}
      ${cart}=      Get Text      ${your_cart}
      Should Be Equal      ${cart}      Your Cart

Error Message For Blank First Name
      [Documentation]      Verify Error Message For Blank First Name
      [Arguments]     ${lname}      ${postal}
      Input Text      ${last_name}     ${lname}
      Input Text      ${postal_code}      ${postal}
      Click Element      ${continue_button}
      ${error}=      Get Text      ${error_message_missing_info}
      Should Be Equal     ${error}      Error: First Name is required

Error Message For Blank Last Name
      [Documentation]      Verify Error Message For Blank Last Name
      [Arguments]     ${fname}      ${postal}
      Input Text      ${first_name}     ${fname}
      Input Text      ${postal_code}      ${postal}
      Click Element      ${continue_button}
      ${error}=      Get Text      ${error_message_missing_info}
      Should Be Equal     ${error}      Error: Last Name is required

Error Message For Blank Postal Code
      [Documentation]      Verify Error Message For Blank Last Name
      [Arguments]     ${fname}      ${lname}
      Input Text      ${first_name}     ${fname}
      Input Text      ${last_name}     ${lname}
      Click Element      ${continue_button}
      ${error}=      Get Text      ${error_message_missing_info}
      Should Be Equal     ${error}      Error: Postal Code is required