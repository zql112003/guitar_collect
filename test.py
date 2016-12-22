#!/usr/bin/env python3

# -*- coding: utf-8 -*-
#encoding:UTF-8
import urllib.request
import asyncio,re,orm,sys
from models import Auction

@asyncio.coroutine
async def test():
    auction = Auction(auction_no='auction_no',img_url='img_url',title='title', paimai_price='paimai_price', yikoujia='yikoujia',endtime='endtime')
    await auction.save()
    print('end_________')

for x in test():
    pass
