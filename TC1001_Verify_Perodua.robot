*** Settings ***
Documentation  Test Case 1: Verify Perodua Axia listing is available in Carsome.
Library  SeleniumLibrary
Library  String
Resource  Custom_Keywords.robot
Resource  Custom_Variables.robot
Suite Setup  Open Website  ${Site_URL}
Suite Teardown  Run Keywords  Close Browser             

*** Test Cases ***
User Verify Listing
    Wait Then Click Element  ${Buy_Car_Link}
    Wait Then Click Element  ${Perodua_Dropdown_Menu}
    Wait Until Element Is Visible  ${Listing_Content_Wrapper}
    Wait Until Element Is Visible  ${Perodua_Car_Title_Listing}
    Count Listing  ${Perodua_Car_Title_Listing}  counter=18