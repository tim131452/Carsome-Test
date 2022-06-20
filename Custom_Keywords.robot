*** Keywords ***
### Suite Setup Keyword ###
Open Website
    [Arguments]  ${url}
    Open Browser  ${url}  ${Browser}
    Set Window Size  ${Browser_Width}  ${Browser_Height}
    Set Selenium Timeout  ${Selenium_Timeout}  ### Change default implicit wait
    Set Selenium Speed  ${Selenium_Speed}  ### Set execution speed

### User-Defined Keywords ###
Wait Then Click Element
    [Arguments]  ${html_element}  ${timeout}=${Selenium_Timeout}
    Wait Until Element Is Visible  ${html_element}  timeout=${timeout}
    Click Element  ${html_element}

Wait Then Input Text
    [Arguments]  ${text_field}  ${input_value}  ${timeout}=${Selenium_Timeout}
    Wait Until Element Is Visible  ${text_field}  timeout=${timeout}
    Input Text  ${text_field}  ${input_value}

Verify Count Listing  ### Obtain the similar element occurances and compare with specified count
    [Arguments]  ${html_element}  ${counter}
    ${element_count}=  Get Element Count  ${html_element}
    Should Be True  ${element_count} == ${counter}

Compare Ascending Price Order  ### Get two car price and compare the results
    [Arguments]  ${first_price_html_element}  ${second_price_html_element}
    ${first_car_price}=  Obtain Car Price  ${first_price_html_element}
    ${second_car_price}=  Obtain Car Price  ${second_price_html_element}
    ${evaluate_status}=  Evaluate  ${first_car_price} < ${second_car_price}
    Run Keyword If  '${evaluate_status}' == 'False'  Fail  Second Car Price Is Not Higher Then First Car Price.

Obtain Car Price  ### Get the car price text which then remove the special character and return the actual number
    [Arguments]  ${price_html_element}
    ${price}=  Get Text  ${price_html_element}
    ${price}=  Remove String  ${price}  ,
    ${price}=  Convert To Number  ${price}
    [Return]  ${price}