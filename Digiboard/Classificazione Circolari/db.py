import mysql.connector

mydb = mysql.connector.connect(
                     host = "172.16.102.76",
                     user = "root",
                     passwd = "",
                     database = "5ai_db_digiboard" )

cursorObject = mydb.cursor()

query = "SELECT * FROM classe"
cursorObject.execute(query)
 
myresult = cursorObject.fetchall()
 
for x in myresult:
    print(x)