#!/usr/bin/env python3
# -*- coding: utf-8 -*-

########## prepare ##########

# install mysql-connector-python:
# pip3 install mysql-connector-python --allow-external mysql-connector-python

import mysql.connector

# change root password to yours:
conn = mysql.connector.connect(user='root', password='root', database='guitar')

cursor = conn.cursor()

cursor.execute('create table auction (id int(11) primary key AUTO_INCREMENT,auction_no varchar(30),img_url varchar(1000),title varchar(100),paimai_price varchar(50),yikoujia varchar(50),endtime varchar(50))')

cursor.execute('insert into auction (auction_no,img_url,title,paimai_price,yikoujia,endtime) values (%s,%s,%s,%s,%s,%s)',['a123222222','sssss','ibanez 7v','5000','10000','5day'])

conn.commit()
cursor.close()


