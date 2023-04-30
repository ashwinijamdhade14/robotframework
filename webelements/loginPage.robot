*** Variables ***
${username}=    xpath=//*[@id="user-name"]
${password}=    xpath=//*[@id="password"]
${submit}=      xpath=//*[@id="login-button"]

${blank_field_error}=      xpath=//*[@id="login_button_container"]/div/form/div[3]/h3
${invalid_creds_erro}=      xpath=//*[@id="login_button_container"]/div/form/div[3]/h3