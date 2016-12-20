#!/usr/bin/env python3

# -*- coding: utf-8 -*-

#encoding:UTF-8
import urllib.request
import re
from bs4 import BeautifulSoup

i = 0
while i < 20:
	offset=(str)(i*21)
	url = "http://auctions.search.yahoo.co.jp/search?p=ibanez&oq=&n=20&auccat=0&tab_ex=commerce&ei=UTF-8&b="+offset
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
	    img_list.append(link.find('img'))
	
	for link in body.findAll('td','a1'):
	    title_list.append(link.find('h3').a.text)
	    print(link.find('h3').a.attrs['href'].split('/')[5:])
	
	for link in body.findAll('td','pr1'):
		#replace str
	    paimaijia_list.append(link.text.replace('Yahoo!かんたん決済',''))
	    
	
	for link in body.findAll('td','pr2'):
	    yikoujia_list.append(link.text)
	

	for link in body.findAll('td','ti'):
	    endtime_list.append(link.text.replace('時間','小时'))
	    #print(link.text.replace('時間','小时'))
			
	i=21
