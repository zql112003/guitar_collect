#!/usr/bin/env python3

# -*- coding: utf-8 -*-

#encoding:UTF-8
import urllib.request
from bs4 import BeautifulSoup

i = 0
while i < 20:
	offset=(str)(i*101)
	url = "http://auctions.search.yahoo.co.jp/search?p=ibanez&oq=&n=100&auccat=0&tab_ex=commerce&ei=UTF-8&b="+offset
	print(url)
	data = urllib.request.urlopen(url).read()
	data = data.decode('UTF-8')

	soup = BeautifulSoup(data,'html5lib')
	body = soup.body

	#从文档中找到所有<a>标签的内容  
	for link in body.find_all('h3'):  
	    print(link.a.text)
	i+=1
#print(soup.head)