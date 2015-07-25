###############################################################################
# Set Lockscreen Information                                                  #
###############################################################################

cecho "Do you want to add contact information to your lockscreen (Email/Tel)? (${reset}${green}y${reset}/${red}n${reset})" $green
read -r response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
  read -p 'Insert your email address >' email
  read -p 'Insert your telephone number >' telephone

  sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Email: ${email}\nTel: ${telephone}"
else

  cecho "Do you want add another message instead? (${reset}${green}y${reset}/${red}n${reset})" $green
  message=""
  read -r response
  if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    read -p 'Insert your message >' message
  fi
  sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "${message}"
fi