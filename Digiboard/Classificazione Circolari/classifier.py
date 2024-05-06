import google.generativeai as genai
import db

class Classifier:
    def __init__(self, myDB):
        
        self.basicPrompt = "You are a school assistant responsible for helping users find which classes should read the circular they send you. Your response should be in CSV format containing only the classes, separated by semicolons, and no additional characters or spaces. Choose the classes only from the following list; do not add anything not included:\n"

        result = myDB.fetch_data("SELECT ID FROM classe")
        for row in result:
            self.basicPrompt += row[0] + ";"
            
        self.basicPrompt = self.basicPrompt[:-1] + "."

        self.basicPrompt += "\nIn the classes names: AFM stands for 'Amministrazione Finanza e Marketing'; CHI stands for 'Chimico'; INF stands for 'Informatica'; LL stands for 'Linguistico'; LSA stands for 'Scienze Applicate'; MEC stands for 'Meccanica'; TUR stands for 'Turistico'; RIM stands for 'Relazioni Internazionali e Marketing'.\n"
        self.basicPrompt += "\nIf the circular shoud be read by the classes of a certain year, but with no specification on the letter, answer using the year. The circular is as follows:\n"


    def classify(self, circular):
        genai.configure(api_key="AIzaSyDH5t5W0fiItfzIOomAvbPVgNWIQozki6U")
        
        model = genai.GenerativeModel('gemini-pro')
        
        prompt = self.basicPrompt + circular
        
        response = model.generate_content(prompt)
        
        return response.text