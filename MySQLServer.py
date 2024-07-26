import mysql.connector

try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="QaZWSXEDCRFVTGB2004%"
    )

    mycursor = mydb.cursor()
    
    result = mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    

    print("Database 'alx_book_store' created successfully!")

    mydb.close()
except mysql.connector.Error as error:
    print(e)
except:
    print("An error occured")