#!/usr/bin/env python3
# -*- coding: utf-8 -*-

__author__ = 'Michael Liao'

' url handlers '

import re, time, json, logging, hashlib, base64, asyncio

from coroweb import get, post

from models import Auction, next_id

@get('/')
async def index(request):
    auctions = await Auction.findAll()
    return {
        '__template__': 'test.html',
        'auctions': auctions
}