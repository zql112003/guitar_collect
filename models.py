#!/usr/bin/env python3
# -*- coding: utf-8 -*-

'''
Models for user, blog, comment.
'''

__author__ = 'zhongquanliang'

import time, uuid

from orm import Model,IntegerField,StringField, BooleanField, FloatField, TextField

def next_id():
    return '%015d%s000' % (int(time.time() * 1000), uuid.uuid4().hex)

class Auction(Model):
    __table__ = 'auction'

    id = IntegerField(primary_key=True)
    auction_no = StringField(ddl='varchar(50)')
    img_url = StringField(ddl='varchar(1000)')
    title = StringField(ddl='varchar(100)')
    paimai_price = StringField(ddl='varchar(50)')
    yikoujia = StringField(ddl='varchar(50)')
    endtime = StringField(ddl='varchar(50)')
