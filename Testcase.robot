*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Observe user is able to test sanity flow
    [Tags]  sanity 
    Given User Launch browser for flipkart
    Enter phone no and password for login
    Pick product in Electronics
    Add to cart
    Check the cart 
    
     


*** Keywords ***
User Launch browser for flipkart
    Open Browser    https://www.flipkart.com/   gc
    Maximize Browser Window

Enter phone no and password for login
    Input Text  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input  8884096680
    Input Text  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input  rashid@123
    Click Element  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button
    Sleep  2s
    Wait Until Element is Visible  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[1]/div/img
    Mouse over  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[1]/div/img
    Mouse over  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[2]/div[2]/div[2]/div/div/div[1]/a[1]
    Sleep  2s
    Mouse over  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[2]/div[2]/div[2]/div/div/div[2]/a[2]
    Click Element  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[2]/div[2]/div[2]/div/div/div[2]/a[2]
    Sleep  2s

Pick product in Electronics
    Wait Until Element is Visible  xpath=//*[@id="container"]/div/div[3]/div[5]/div/div[1]
    Mouse Over  xpath=//*[@id="container"]/div/div[3]/div[5]/div/div[2]/div/div/div[1]/div/div[2]/div/div/a/div/div/div
    Sleep  2s
    Click Element  xpath=//*[@id="container"]/div/div[3]/div[5]/div/div[2]/div/div/div[1]/div/div[2]/div/div/a/div/div/div
    Sleep  2s

Add to cart  
    Switch Window  new
    Sleep  2s
    Click Button  xpath=//*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button
    Sleep  5s
    


    


