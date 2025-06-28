import mysql.connector

try:
    mydb = mysql.connector.connect(
        host = "localhost", username = "root",
        password = "2025007diditb@d"
    )

    mycursor = mydb.cursor()

    mycursor.execute(
        "CREATE DATABASE IF NOT EXISTS alx_book_store"
    )
    print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error:
    print("Failed to connect to MySQL.")
finally:
    mycursor.close()
    mydb.close()