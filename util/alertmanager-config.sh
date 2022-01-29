
#!/bin/sh
script=$0

sed -i "s|https://api.telegram.org/bot5209561422:AAEEPNrU6AgO2IxBTykaehhonAQ4E6M37NY/sendmessage?chat_id=539686084&text=%22Alerts500X%22|$1|" $(dirname "$script")/../alertmanager/config.yml
