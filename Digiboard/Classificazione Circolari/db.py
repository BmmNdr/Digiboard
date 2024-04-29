import mysql.connector

class Database:
    def __init__(self, host, port, username, password, database):
        self.host = host
        self.username = username
        self.password = password
        self.database = database
        self.port = port
        self.connection = None
        self.cursor = None

    def connect(self):
        try:
            self.connection = mysql.connector.connect(
                host=self.host,
                port=self.port,
                user=self.username,
                password=self.password,
                database=self.database
            )
            self.cursor = self.connection.cursor()
            print("Connected to database successfully")
        except mysql.connector.Error as err:
            print("Error:", err)

    def execute_query(self, query, params=None):
        try:
            self.cursor.execute(query, params)
            self.connection.commit()
            print("Query executed successfully")
        except mysql.connector.Error as err:
            print("Error:", err)

    def fetch_data(self, query, params=None):
        try:
            self.cursor.execute(query, params)
            result = self.cursor.fetchall()
            return result
        except mysql.connector.Error as err:
            print("Error:", err)

    def close_connection(self):
        try:
            if self.connection.is_connected():
                self.cursor.close()
                self.connection.close()
                print("Connection closed")
        except mysql.connector.Error as err:
            print("Error:", err)


# Example usage:
#db = Database(host="localhost", username="root", password="", database="5ai_db_digiboard")
#db.connect()

# Fetch data
#result = db.fetch_data("SELECT * FROM classe")
#print("Data:", result)

# Close connection
#db.close_connection()