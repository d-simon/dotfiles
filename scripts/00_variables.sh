###############################################################################
# Set Lockscreen Information                                                  #
###############################################################################

echo "Do you want to add contact information to your lockscreen (Email/Tel)? (y/n)"
read -r response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
  read -p 'Insert your email address >' email
  read -p 'Insert your telephone number >' telephone

  sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Email: ${email}\nTel: ${telephone}"
else
  echo "Do you want add another message instead? (y/n)"
  message=""
  read -r response
  if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    read -p 'Insert your message >' message
  fi
  sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "${message}"
fi

