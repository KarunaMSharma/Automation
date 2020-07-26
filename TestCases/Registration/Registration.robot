*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../../Resources/Resources.robot

# Documentation  Test cases for registration module

*** Variables ***
${url}  https://www.thetestingworld.com/
${browser}  chrome


*** Test Cases ***
TC_001_Successful navigation to registration page
    [Documentation]  This test case validates the successful navigation to registration page
    [Tags]    Functional  Regression
    Set Selenium Implicit Wait  10 Seconds
    ${reglink}=  Read_from_Object_Repository  Registration.registration_link_xpath
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Page Should Contain  Login
    Click Link  xpath:${reglink}
    Capture Page Screenshot  C:/Users/Admin/PycharmProjects/FirstFramework/Snapshots/Registration/TC_001.png
    Close Browser


TC_002_Successful Registration with valid credentials
    [Documentation]  This test case validates the successful registration with valid credentials
    [Tags]    Functional  Regression
    Set Selenium Implicit Wait  10 Seconds
    ${reglink}=  Read_from_Object_Repository  Registration.registration_link_xpath
    ${namelink}=  Read_from_Object_Repository  Registration.name_xpath
    ${usernamelink}=  Read_from_Object_Repository  Registration.username_xpath
    ${passlink}=  Read_from_Object_Repository  Registration.password_xpath
    ${conf_passlink}=  Read_from_Object_Repository  Registration.confirm_password_xpath
    ${emaillink}=  Read_from_Object_Repository  Registration.email_address_xpath
    ${conf_emaillink}=  Read_from_Object_Repository  Registration.confirm_email_address_xpath
    ${reg_buttonlink}=  Read_from_Object_Repository  Registration.registration_button_xpath
    Registration_navigation
    Input text  xpath:${namelink}  KarSh17
    Input text  xpath:${usernamelink}  KarunaShMaya15
    Input text  xpath:${passlink}  Bunny07
    Input text  xpath:${conf_passlink}  Bunny07
    Input text  xpath:${emaillink}  sharma07@gmail.com
    Input text  xpath:${conf_emaillink}  sharma07@gmail.com
    Click Button  xpath:${reg_buttonlink}
    Capture Page Screenshot  C:/Users/Admin/PycharmProjects/FirstFramework/Snapshots/Registration/TC_002.png
    page should contain  Your account has been created
    Close Browser


TC_003_Unsuccessful Registration due to an existing username
    [Documentation]  This test case validates the unsuccessful registration due to an existing username
    [Tags]    Functional  Regression
    Set Selenium Implicit Wait  10 Seconds
    ${reglink}=  Read_from_Object_Repository  Registration.registration_link_xpath
    ${namelink}=  Read_from_Object_Repository  Registration.name_xpath
    ${usernamelink}=  Read_from_Object_Repository  Registration.username_xpath
    ${passlink}=  Read_from_Object_Repository  Registration.password_xpath
    ${conf_passlink}=  Read_from_Object_Repository  Registration.confirm_password_xpath
    ${emaillink}=  Read_from_Object_Repository  Registration.email_address_xpath
    ${conf_emaillink}=  Read_from_Object_Repository  Registration.confirm_email_address_xpath
    ${reg_buttonlink}=  Read_from_Object_Repository  Registration.registration_button_xpath
    Registration_navigation
    Input text  xpath:${namelink}  KarSh2
    Input text  xpath:${usernamelink}  KarunaShMaya1
    Input text  xpath:${passlink}  Bunny07
    Input text  xpath:${conf_passlink}  Bunny07
    Input text  xpath:${emaillink}  sharma@gmail.com
    Input text  xpath:${conf_emaillink}  sharma@gmail.com
    Click Button  xpath:${reg_buttonlink}
    Capture Page Screenshot  C:/Users/Admin/PycharmProjects/FirstFramework/Snapshots/Registration/TC_003.png
    page should contain  The username you entered is not available
    Close Browser

TC_004_Unsuccessful Registration due to unconfirmed password
    [Documentation]  This test case validates the unsuccessful registration due to unconfirmed password
    [Tags]    Functional  Regression
    Set Selenium Implicit Wait  10 Seconds
    ${reglink}=  Read_from_Object_Repository  Registration.registration_link_xpath
    ${namelink}=  Read_from_Object_Repository  Registration.name_xpath
    ${usernamelink}=  Read_from_Object_Repository  Registration.username_xpath
    ${passlink}=  Read_from_Object_Repository  Registration.password_xpath
    ${conf_passlink}=  Read_from_Object_Repository  Registration.confirm_password_xpath
    ${emaillink}=  Read_from_Object_Repository  Registration.email_address_xpath
    ${conf_emaillink}=  Read_from_Object_Repository  Registration.confirm_email_address_xpath
    ${reg_buttonlink}=  Read_from_Object_Repository  Registration.registration_button_xpath
    Registration_navigation
    Input text  xpath:${namelink}  KarSh3
    Input text  xpath:${usernamelink}  KarunaShMaya10
    Input text  xpath:${passlink}  Bunny07
    Input text  xpath:${conf_passlink}  Bunny007
    Input text  xpath:${emaillink}  sharma@gmail.com
    Input text  xpath:${conf_emaillink}  sharma@gmail.com
    Click Button  xpath:${reg_buttonlink}
    Capture Page Screenshot  C:/Users/Admin/PycharmProjects/FirstFramework/Snapshots/Registration/TC_004.png
    Page should contain  The passwords you entered do not match
    Close Browser


TC_005_Unsuccessful Registration due to invalid email id
    [Documentation]  This test case validates the unsuccessful registration due to invalid email id
    [Tags]    Functional  Regression
    Set Selenium Implicit Wait  10 Seconds
    ${reglink}=  Read_from_Object_Repository  Registration.registration_link_xpath
    ${namelink}=  Read_from_Object_Repository  Registration.name_xpath
    ${usernamelink}=  Read_from_Object_Repository  Registration.username_xpath
    ${passlink}=  Read_from_Object_Repository  Registration.password_xpath
    ${conf_passlink}=  Read_from_Object_Repository  Registration.confirm_password_xpath
    ${emaillink}=  Read_from_Object_Repository  Registration.email_address_xpath
    ${conf_emaillink}=  Read_from_Object_Repository  Registration.confirm_email_address_xpath
    ${reg_buttonlink}=  Read_from_Object_Repository  Registration.registration_button_xpath
    Registration_navigation
    Input text  xpath:${namelink}  KarSh34
    Input text  xpath:${usernamelink}  KarunaShMaya1077
    Input text  xpath:${passlink}  Bunny007
    Input text  xpath:${conf_passlink}  Bunny007
    Input text  xpath:${emaillink}  tweetu.gmail
    Input text  xpath:${conf_emaillink}  tweetu.gmail
    Click Button  xpath:${reg_buttonlink}
    Capture Page Screenshot  C:/Users/Admin/PycharmProjects/FirstFramework/Snapshots/Registration/TC_005.png
    Close Browser


TC_006_Unsuccessful Registration due to existing email id
    [Documentation]  This test case validates the unsuccessful registration due to existing email id
    [Tags]    Functional  Regression
    Set Selenium Implicit Wait  10 Seconds
    ${reglink}=  Read_from_Object_Repository  Registration.registration_link_xpath
    ${namelink}=  Read_from_Object_Repository  Registration.name_xpath
    ${usernamelink}=  Read_from_Object_Repository  Registration.username_xpath
    ${passlink}=  Read_from_Object_Repository  Registration.password_xpath
    ${conf_passlink}=  Read_from_Object_Repository  Registration.confirm_password_xpath
    ${emaillink}=  Read_from_Object_Repository  Registration.email_address_xpath
    ${conf_emaillink}=  Read_from_Object_Repository  Registration.confirm_email_address_xpath
    ${reg_buttonlink}=  Read_from_Object_Repository  Registration.registration_button_xpath
    Registration_navigation
    Input text  xpath:${namelink}  KarSh345
    Input text  xpath:${usernamelink}  KarunaShMaya10778
    Input text  xpath:${passlink}  Bunny007
    Input text  xpath:${conf_passlink}  Bunny007
    Input text  xpath:${emaillink}  saxenamaya@gmail.com
    Input text  xpath:${conf_emaillink}  saxenamaya@gmail.com
    Click Button  xpath:${reg_buttonlink}
    Capture Page Screenshot  C:/Users/Admin/PycharmProjects/FirstFramework/Snapshots/Registration/TC_006.png
    Page should contain  The email address you entered is already in use or invalid
    Close Browser

TC_007_Unsuccessful Registration due to empty fields
    [Documentation]  This test case validates the unsuccessful registration due to empty fields
    [Tags]    Functional  Regression
    Set Selenium Implicit Wait  10 Seconds
    ${reglink}=  Read_from_Object_Repository  Registration.registration_link_xpath
    ${namelink}=  Read_from_Object_Repository  Registration.name_xpath
    ${usernamelink}=  Read_from_Object_Repository  Registration.username_xpath
    ${passlink}=  Read_from_Object_Repository  Registration.password_xpath
    ${conf_passlink}=  Read_from_Object_Repository  Registration.confirm_password_xpath
    ${emaillink}=  Read_from_Object_Repository  Registration.email_address_xpath
    ${conf_emaillink}=  Read_from_Object_Repository  Registration.confirm_email_address_xpath
    ${reg_buttonlink}=  Read_from_Object_Repository  Registration.registration_button_xpath
    Registration_navigation
    Input text  xpath:${namelink}  KarSh3456
    Input text  xpath:${usernamelink}  KarunaShMaya107789
    Click Button  xpath:${reg_buttonlink}
    Capture Page Screenshot  C:/Users/Admin/PycharmProjects/FirstFramework/Snapshots/Registration/TC_007.png
    Close Browser


*** Keywords ***

Registration_navigation
    ${reglink}=  Read_from_Object_Repository  Registration.registration_link_xpath
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Page Should Contain  Login
    Click Link  xpath:${reglink}
    Page should contain  Register








