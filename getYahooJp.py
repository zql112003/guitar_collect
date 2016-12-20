#!/usr/bin/env python3

# -*- coding: utf-8 -*-

#encoding:UTF-8
import urllib.request
import asyncio,re,orm,sys
from bs4 import BeautifulSoup
from models import Auction

# saveAuction


async def saveAuction(loop,auction_no,img_url,title,paimai_price,yikoujia,endtime):
    
    await orm.create_pool(loop=loop,user='root', password='root', db='guitar')

    auction = Auction(auction_no=auction_no,img_url=img_url,title=title, paimai_price=paimai_price, yikoujia=yikoujia,endtime=endtime)

    await auction.save()


i = 0
while i < 20:
	offset=(str)(i*101)
	url = "http://auctions.search.yahoo.co.jp/search?p=ibanez&oq=&n=100&auccat=0&select=22&slider=0&tab_ex=commerce&ei=UTF-8&b="+offset
	print(url)
	data = urllib.request.urlopen(url).read()
	data = data.decode('UTF-8')

	soup = BeautifulSoup(data,'html5lib')
	body = soup.body

	
	#need 5 list to save to mysql
	auctionid_list=[]
	img_list=[]
	title_list =[]
	paimaijia_list =[]
	yikoujia_list =[]
	endtime_list =[]
	#从文档中找到所有<td class='i'>标签的内容  
	for link in body.findAll('td','a1'):
	    auctionid_list.append(link.find('h3').a.attrs['href'].split('/')[5:])
	    #print(link.find('h3').a.attrs['href'].split('/')[5:])
	

	for link in body.findAll('td','i'):
	    img_list.append(link.find('img').attrs["src"])
	    print(link.find('img').attrs["src"])
	
	for link in body.findAll('td','a1'):
	    title_list.append(link.find('h3').a.text)
	    #print(link.find('h3').a.attrs['href'].split('/')[5:])
	
	for link in body.findAll('td','pr1'):
		#replace str
	    paimaijia_list.append(link.text.replace('Yahoo!かんたん決済',''))
	    
	
	for link in body.findAll('td','pr2'):
	    yikoujia_list.append(link.text)
	

	for link in body.findAll('td','ti'):
	    endtime_list.append(link.text.replace('時間','小时'))
	    #print(link.text.replace('時間','小时'))
			
	#need ORM to insert MySQLs
	loop = asyncio.get_event_loop()
	for i in range(len(auctionid_list)):
		auctionid=auctionid_list[i] if any(auctionid_list[i]) else '---------'
		img=img_list[i] if any(img_list[i]) else '---------'
		title=title_list[i] if any(title_list[i]) else '---------'
		paimaijia =paimaijia_list[i] if any(paimaijia_list[i]) else '---------'
		yikoujia = yikoujia_list[i] if any(yikoujia_list[i]) else '---------'
		endtime = endtime_list[i] if any(endtime_list[i]) else '---------'
		#saveAuction(loop,auctionid_list[i],img_list[i],title_list[i],paimaijia_list[i],yikoujia_list[i],endtime_list[i])
		loop.run_until_complete(asyncio.wait([saveAuction(loop,auctionid,img,title,paimaijia,yikoujia,endtime)]))
		loop.close()
		










	i=21
