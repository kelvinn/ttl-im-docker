#!/usr/bin/env python
# coding: utf-8

import os
import requests
from datetime import datetime
from ping import Ping
from time import sleep

STATED_APIKEY = os.getenv('STATED_APIKEY', 'example@example.com')

while True:
    sleep(1)
    my_ip = os.getenv('MY_IP', '8.8.8.8')
    p = Ping(my_ip, 2000, 55)
    ms = p.run()
    params = {"u":STATED_APIKEY, "stat":"ping", "value":str(ms)}
    r = requests.get("https://stated.io/api", params=params )
    print(str(ms) + "ms" + ": " + str(r.status_code))