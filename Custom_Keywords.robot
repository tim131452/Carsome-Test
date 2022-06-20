*** Keywords ***
### Suite Setup Keyword ###
Open Website
    [Arguments]  ${url}
    Open Browser  ${url}  ${Browser}
    Set Window Size  ${Browser_Width}  ${Browser_Height}
    Set Selenium Timeout  ${Selenium_Timeout}  ### Change Default Implicit Wait
    Set Selenium Speed  ${Selenium_Speed}  ### Set Execution Speed

### User-Defined Keywords ###
Wait Then Click Element
    [Arguments]  ${html_element}  ${timeout}=${Selenium_Timeout}
    Wait Until Element Is Visible  ${html_element}  timeout=${timeout}
    Click Element  ${html_element}

Wait Then Input Text
    [Arguments]  ${text_field}  ${input_value}  ${timeout}=${Selenium_Timeout}
    Wait Until Element Is Visible  ${text_field}  timeout=${timeout}
    Input Text  ${text_field}  ${input_value}

Count Listing
    [Arguments]  ${html_element}  ${counter}
    ${count}=  Get Element Count  ${html_element}
    Should Be True  ${count} == ${counter}



