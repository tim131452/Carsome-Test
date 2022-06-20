*** Settings ***
Documentation  User go to Carsome to find the cheapest Perodua Axia available.
Library  SeleniumLibrary
Library  String
Resource  Custom_Keywords.robot
Resource  Custom_Variables.robot
Suite Setup  Open Website  ${Site_URL}
Suite Teardown  Run Keywords  Close Browser             

*** Test Cases ***
Verify Perodua Listing
    [Documentation]  User verify Perodua Axia is available in Carsome.
    [Tags]  TESTCASE_1
    Wait Then Click Element  ${Buy_Car_Link}
    Wait Then Click Element  ${Perodua_Dropdown_Menu}
    Wait Until Element Is Visible  ${Listing_Content_Wrapper}
    Wait Until Element Is Visible  ${Perodua_Car_Title_Listing}
    Verify Count Listing  ${Perodua_Car_Title_Listing}  counter=18

Sort Listing Price
    [Documentation]  User verify the price of available Perodua Axia can be sorted from lowest to highest.
    [Tags]  TESTCASE_2
    [Setup]  Run Keyword If  '${PREV TEST STATUS}' == 'FAIL'  Fail  First Test Case Did Not Pass
    Verify Count Listing  ${Perodua_Car_Title_Listing}  counter=18
    Wait Then Click Element  ${Recommended_Link}
    Wait Then Click Element  ${Lowest_Price_Link}
    Compare Ascending Price Order  ${First_Car_Price}  ${Second_Car_Price}