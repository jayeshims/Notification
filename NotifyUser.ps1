# PowerShell script to notify the user to restart the laptop
 
# Define message title and body
$MessageTitle = "Team Nucleii Notification"
$MessageBody = @"
Please remember the following best practices while using your computer:
 
1) Lock your system when stepping away.
2) Use a strong password for security.
3) Avoid eating or drinking near your computer.
4) Shut down your computer when your shift is over.
5) Do not use public Wi-Fi networks for sensitive information.
6) Keep your software updated to protect against vulnerabilities.
7) Be cautious with email attachments and links; verify sources before opening.
8) Use a secure browser.
09) Report any suspicious activity or issues to Team Nucleii immediately.
 
Thank you for your cooperation!
"@
 
$ButtonType = 0x1 # OK button only
$IconType = 0x40 # Information icon
 
# Show message box to the user
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.MessageBox]::Show($MessageBody, $MessageTitle, $ButtonType, $IconType)