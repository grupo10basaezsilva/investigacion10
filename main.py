import pyodbc
import pandas as pd
import datetime
import random

server = 'localhost'
database = 'investigacion10'
username = 'sa'
password = 'Admin.123'
cnxn = pyodbc.connect(
    'DRIVER={ODBC Driver 17 for SQL Server};'
    'SERVER='+server+';DATABASE='+database+';UID='+username+';PWD='+ password)

cursor = cnxn.cursor()
##Query a ejecutar
cursor.execute(
    "INSERT INTO cliente.sensor(temperatura, humedad, sampletime) VALUES(?,?,?)",
    (random.randint(-10,120), random.randint(0,100),datetime.datetime.now()))
cnxn.commit()