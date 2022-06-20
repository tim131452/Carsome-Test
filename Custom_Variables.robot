*** Variables ***
### Suite Setup Variables ###
${Site_URL}=  https://carsome.my
${Browser}=  chrome
${Browser_Width}=  1400
${Browser_Height}=  1200
${Selenium_Timeout}=  15
${Selenium_Speed}=  0.2

### Link Variable ###
${Buy_Car_Link}=  (//span[@data-track="header-click-buy-car"])[1]
${Perodua_Dropdown_Menu}=  (//div[@data-track="header-click-brand" and contains(text(),'Perodua')])[1]
${Recommended_Link}=  //div[contains(@class, 'v-select__selection') and text()='Recommended']
${Lowest_Price_Link}=  //div[@id="list-66"]//*[contains(text(),"Lowest Price")]

### Wrapper Variable ###
${Listing_Content_Wrapper}=  //div[@class="list-card__wrapper"]
${Perodua_Car_Title_Listing}=  //div[@class="list-card__item"]//div[@class="mod-card__title__year-brand-model" and contains(text(),'Perodua')]

### Price Field Variable ###
${First_Car_Price}=  (//div[@class="mod-card__price__total"]/strong)[1]
${Second_Car_Price}=  (//div[@class="mod-card__price__total"]/strong)[2]