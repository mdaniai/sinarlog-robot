*** Variables ***
${CLOCK_IN_BUTTON}    xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[1]/div/button
${CLOCK_IN_TIMESTAMP}    xpath=//*[@id="root"]/div[1]/div[2]/div/div[3]/div[1]/h5

# Clock In Modal
${CLOCK_IN_OTP_MODAL}    id=otpModal
${CLOCK_IN_OTP_INPUT}    xpath=//*[@id="otpModal"]/form/div/div/input[1]
${CLOCK_IN_OTP_SUBMIT}    xpath=//*[@id="otpModal"]/form/div/button

# Success OTP Modal
${CLOCK_IN_SUCCESS_OTP_MODAL}    id=successOTPModal
${CLOCK_IN_SUCCESS_OTP_BUTTON}    xpath=//*[@id="successOTPModal"]/form[1]/button