from asyncore import read, write
import json
import re
from textwrap import wrap
from unittest import result
import requests


import telebot
token='5209561422:AAEEPNrU6AgO2IxBTykaehhonAQ4E6M37NY'
bot = telebot.TeleBot(token)
chat_id = '539686084'

url = 'http://94.26.231.33:9093/api/v1/alerts'
res = requests.get(url).json()

for prnt in res["data"]:
    if prnt:
        bot.send_message(chat_id,"alarm")
