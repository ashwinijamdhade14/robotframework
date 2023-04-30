*** Settings ***
Documentation      Login To Website
Library      SeleniumLibrary
Resource      C:/Users/Administrator/PycharmProjects/sauceDemoProject/config/common_resource.txt


*** Keywords ***
Open SauceDemo Website
      Open Browser      https://www.saucedemo.com/      Chrome
      Maximize Browser Window

Login To SwagLabs
      [Documentation]      Login to SwagLabs
      [Arguments]     ${user}      ${pass}
      Input Text      ${username}      ${user}
      Input Text      ${password}      ${pass}
      Click Element   ${submit}

Verify User Is Successfully Login
      [Documentation]      Verify user is logged-in successfylly
      ${product}      Get Text      ${products_label}
      Should Be Equal      ${product}      Products

Login To SwagLabs Without Password
      [Arguments]     ${user}
      [Documentation]      Login to SwagLabs without password
      Input Text      ${username}      ${user}
      Click Element   ${submit}

Login To SwagLabs Without Username
      [Arguments]     ${pass}
      [Documentation]      Login to SwagLabs without username
      Input Text      ${password}      ${pass}
      Click Element   ${submit}

Error Message For Invalid Creds
      [Documentation]      Verify Error Message For Invalid Creds
      ${error_msg}=      Get Text      ${invalid_creds_erro}
      Should Be Equal      ${error_msg}      Epic sadface: Username and password do not match any user in this service

Error Message For Blank Password
      [Documentation]      Verify Error Message For Blank Password
      ${error_msg}=      Get Text      ${blank_field_error}
      Should Be Equal      ${error_msg}      Epic sadface: Password is required

Error Message For Blank Username
      [Documentation]      Verify Error Message For Blank Username
      ${error_msg1}=      Get Text      ${blank_field_error}
      Should Be Equal      ${error_msg1}      Epic sadface: Username is required

