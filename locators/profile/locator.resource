*** Variables ***
${PROFILE_CHANGE_PASSWORD_BUTTON}    xpath=//button[@class='btn btn-secondary-normal text-white normal-case']
${PROFILE_EDIT_BUTTON}    xpath=//button[@class='btn btn-success-normal text-white normal-case w-24']

# Change Password Modal
${CHANGE_PASSWORD_MODAL}    id=updatePasswordModal
${CHANGE_PASSWORD_NEW}    id=new-password
${CHANGE_PASSWORD_CONFIRM}    id=confirm-password
${CHANGE_PASSWORD_INFO}    xpath=//*[@id="updatePasswordModal"]/form/div/div[3]
${CHANGE_PASSWORD_SAVE}    xpath=//*[@id="updatePasswordModal"]/form/div/button[1]
${CHANGE_PASSWORD_CLOSE_BUTTON}    xpath=//*[@id="updatePasswordModal"]/form/div/button[2]