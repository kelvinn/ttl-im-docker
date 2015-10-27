#!/usr/bin/env python
# coding: utf-8

import os
from datetime import datetime
from influxdb import InfluxDBClient
from ping import Ping
from time import sleep

HOSTNAME = os.getenv('INFLUXDB_HOST', 'localhost')
INFLUXDB_USERNAME = os.getenv('INFLUXDB_USERNAME', 'root')
INFLUXDB_PASSWORD = os.getenv('INFLUXDB_PASSWORD', 'root')
INFLUXDB_DATABASE = os.getenv('INFLUXDB_DATABASE', 'db1')
MY_IP = os.getenv('MY_IP', '127.0.0.1')

client = InfluxDBClient(HOSTNAME, 8086, INFLUXDB_USERNAME, INFLUXDB_PASSWORD, INFLUXDB_DATABASE)

while True:
    sleep(1)
    p = Ping(MY_IP, 2000, 55)
    ms = p.run()
    json_body = [
        {
            "measurement": "ping",
            "tags": {
                "host": "server01",
                "region": "us-east"
            },
            "time": str(datetime.now().isoformat()),
            "fields": {
                "value": float(ms)
            }
        }
    ]
    client.write_points(json_body)
    result = client.query('select value from ping;')
    print("Sent")