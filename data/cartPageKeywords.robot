*** Settings ***
Documentation      Login To Cart
Resource      C:/Users/Administrator/PycharmProjects/sauceDemoProject/config/common_resource.txt

*** Keywords ***
Add Product In A Cart
      [Documentation]      Add Bagpack Product In A Cart
      Click Element      ${sauce_backpack}
      Click Element      ${cart_logo}
      ${product_name}      Get Text      ${bagpack_label}
      Should Be Equal      ${product_name}      Sauce Labs Backpack

Remove Product From Cart
      [Documentation]      Remove Bagpack Product From A Cart
      Click Element      ${remove_backpack}
      Element Should Not Be Visible      ${bagpack_label}

Go Back To Products Page
      [Documentation]      Go Back To Products Page From Cart Page
      Click Element      ${continue_shopping}
      ${product}      Get Text      ${products_label}
      Should Be Equal      ${product}      Products

Proceed To Checkout Page
      [Documentation]      Proceed To Products Page From Cart Page
      Click Element      ${checkout}
      ${checkout_page}      Get Text      ${checkout_lable}
      Should Be Equal      ${checkout_page}      Checkout: Your Information
