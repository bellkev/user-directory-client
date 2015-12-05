#!/usr/bin/env python

import os
import re

import requests

try:
    url = os.environ['COW_URL']
except KeyError:
    url = "http://%s:8001" % os.environ['DOCKER_IP']

def list_users():
    response = requests.get(url)
    return re.findall("(\d+)\s*\|\s*(\w+)", response.text)


if __name__ == '__main__':
    users = list_users()
    print ' id |  name'
    print '----+---------'
    for user in list_users():
        print '  %s | %s' % user
    print '(%d rows)' % len(users)
    print
