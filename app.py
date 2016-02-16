#!/usr/bin/env python
# coding: utf-8

import os
import requests
from ping import Ping
from time import sleep

STATED_APIKEY = os.getenv('STATED_APIKEY', 'example@example.com')

while True:
    sleep(1)
    try:
        my_ip = os.getenv('MY_IP', '8.8.8.8')
        p = Ping(my_ip, 2000, 55)
        ms = p.run()
    except:
        print("Some exception")
    if ms:
        params = {"u":STATED_APIKEY, "stat":"ping", "value":str(ms)}
        r = requests.get("https://stated.io/api", params=params )
        print(str(ms) + "ms" + ": " + str(r.status_code))
    else:
        print("Ping failure")