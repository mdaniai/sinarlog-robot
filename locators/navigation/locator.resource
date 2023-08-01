*** Variables ***
${SINARLOG_LOGO}    xpath=//img[@alt='SinarLog Logo']
${DARK_MODE}    xpath=//*[@id="root"]/div[1]/div[1]/div[1]/div/div[4]/div/div[1]/button
${PROFILE_PICTURE}    xpath=//*[@id="root"]/div[1]/div[1]/div[1]/div/div[4]/div/div[3]/label/div

# HR
${NAV_DASHBOARD}    xpath=//a[@class='normal-case text-lg font-semibold hover:text-red-500 null'][normalize-space()='Dashboard']
${NAV_EMPLOYEE}    xpath=//a[@class='normal-case text-lg font-semibold hover:text-red-500 null'][normalize-space()='Employees']
${NAV_HISTORY}    xpath=//a[@class='normal-case text-lg font-semibold hover:text-red-500 null'][normalize-space()='History']

# Menu
${PROFILE_BUTTON}    xpath=//a[normalize-space()='Profile']
${LOGOUT_BUTTON}    xpath=//a[normalize-space()='Logout']