import mysql.connector


conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="01@ugust2024",
    database="car_rental_system"
)

cursor = conn.cursor()















conn.close()