*** Settings ***
Library           AppiumLibrary

*** Test Cases ***
n11LoginTestCase
    Open Browser    http://www.n11.com/giris-yap    gc
    login

MobileFirstCase
    Open Application    http://localhost:4723/wd/hub    deviceName=emulator-5554    appPackage=com.experitest.ExperiBank    platformName=Android
    Input Text    id=usernameTextField    company
    Input Password    id=passwordTextField    company
    Click Element    id=loginButton

*** Keywords ***
login
    Input Text    id=email    testmail3@pismail.com
    Input Password    id=password    123qwe
    Click Element    id=loginButton
