import google.generativeai as genai
import db

myDB = db.Database(host="localhost", username="root", password="", database="5ai_db_digiboard")
myDB.connect()

def getClassesCSV():
    result = myDB.fetch_data("SELECT ID FROM classe")
    string = ""

    for row in result:
        string += row[0] + ";"
        
    return string

basicPrompt = "You are a school assistant responsible for helping users find which classes should read the circular they send you. Your response should be in CSV format containing only the classes, separated by semicolons, and no additional characters or spaces. Choose the classes only from the following list; do not add anything not included:\n"
basicPrompt += getClassesCSV()

basicPrompt += "\nIf the circular shoud be read by the classes of a certain year, but with no specification on the letter, answer using the year.The circular is as follows:\n"

def classify(circular):
    genai.configure(api_key="AIzaSyDH5t5W0fiItfzIOomAvbPVgNWIQozki6U")
    
    model = genai.GenerativeModel('gemini-pro')
    
    prompt = basicPrompt + circular
    
    response = model.generate_content(prompt)
    
    print(response.text)