from datetime import datetime

def send_to_telegram(msg):
    import requests
    TOKEN = "6174770999:AAHMx5tHPxTTCcZEYTqkLTkHXR1gSl5mC88"
    chat_id = "825445915"
    url = f"https://api.telegram.org/bot{TOKEN}/sendMessage?chat_id={chat_id}&text={msg}"
    return requests.get(url).json()

text = f'I ran on - {datetime.now()}'

send_to_telegram(msg=text)