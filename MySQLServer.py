import mysql.connector

try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="QaZWSXEDCRFVTGB"
    )

    mycursor = mydb.cursor()
    
    result = mycursor.execute("CREATE DATABASE IF NOT EXIST alx_book_store ")

    print("Database 'alx_book_store' created successfully!")

    result.close()
except:
    print("An error occured")