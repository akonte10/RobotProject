*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Test Suite setup    
Suite Teardown    Log    I am inside Test Teardown
Test Setup    Log    I am inside Test setup
Test Teardown    Log    I am inside Test Teardown  

Default Tags    Sanity
          
*** Test Cases ***

MyFirstTest
    [Tags]    Smoke
    Log    Hello world...  
    
MySecondTest
    [Tags]    Example
    Log    I am inside 2nd Test 
    Set Tags   regression1
    Remove Tags    regression1
    
MyThirdTest
    Log    I am inside 3nd Test 
    
MyFourthTest
    Log    I am inside 4th Test
    
MyFivethTest
    Log    I am inside 5th Test
    
#FirstSeleniumTest
      
 #   open Browser    https://www.google.fr    chrome
 #  Set Browser Implicit Wait    5    
 #   Input Text    name=q    Automation step by step
 #   Click Button    name=btnK
 #   Sleep    2
 #   Close Browser
 #  Log    Test Complete
    
#SampleLoginTest
 #   [Documentation]    This is a sample login Test
 #  Open Browser     ${URL}    Chrome
 #  Set Browser Implicit Wait    5
 #   LoginKW
 #   Click Element    id=welcome 
 #   Close Browser    
 #   Log              Test Completed
 #   Log              This Test was executed by %{username} on %{os}
    



*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}    username= Admin    password=admin123


*** Keywords ***
LoginKW
    Input Text       id=txtUsername    @{CREDENTIALS}[0]
    Input Password   id=txtPassword    &{LOGINDATA}[password]
    Click Button     id=btnLogin
    
    
    
    