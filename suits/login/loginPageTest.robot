*** Settings ***
Documentation      Login To Website
Resource      C:/Users/Administrator/PycharmProjects/sauceDemoProject/config/common_resource.txt

Test Setup      Open SauceDemo Website
Test Teardown      Close Browser
*** Test Cases ***
Verify That User Will Be Able To Login With Valid Username And Valid Password
      [Documentation]     Test login with valid credentials
	  Login To SwagLabs      standard_user      secret_sauce
	  Verify User Is Successfully Login

Verify That User Is Not Able To Login With Valid Username And An Invalid Password
      [Documentation]     Test login with invalid password
	  Login To SwagLabs      standard_user      123
	  Error Message For Invalid Creds

Verify That User Is Not Able To Login With Inalid Username And An Valid Password
      [Documentation]     Test login with invalid username
	  Login To SwagLabs      user1      secret_sauce
	  Error Message For Invalid Creds

Verify That User Is Not Able To Login When The Password Is Blank And Submit Button Is Clicked
      [Documentation]     Test login with blank password
      Login To SwagLabs Without Password      standard_user
      Error Message For Blank Password

Verify That User Is Not Able To Login When The Username Is Blank And Submit Button Is Clicked
      [Documentation]     Test login with blank password
      Login To SwagLabs Without Username      secret_sauce
      Error Message For Blank Username
