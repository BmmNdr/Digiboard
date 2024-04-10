import pathlib
import textwrap

import google.generativeai as genai

from IPython.display import display
from IPython.display import Markdown


string = """You are a school assistant responsible for helping users find which classes should read the circular they send you. Your response should be in CSV format containing only the classes, separated by semicolons, and no additional characters or spaces. Choose the classes only from the following list; do not add anything not included:
1AINF;2AINF;3AINF;4AINF;5AINF;1BMEC;2BMEC;3BMEC;4BMEC;3CAFM;4AAFM.
If the circular shoud be read by the classes of a certain year, but with no specification on the letter, answer using the year.
The circular is as follows:
Si informano i docenti, gli studenti e i genitori del Consiglio di classe della 4AAFM che lo stesso è convocato in seduta straordinaria il giorno
venerdì 12 aprile 2024
alle ore 14,00
per discutere del seguente ordine del giorno:
misure disciplinari nei confronti degli studenti: L. C. e L. C.
Si consiglia la presenza anche al consiglio di classe della 4 B Meccanica
Cordiali saluti."""

def to_markdown(text):
  text = text.replace('•', '  *')
  return Markdown(textwrap.indent(text, '> ', predicate=lambda _: True))

def main():
    genai.configure(api_key="")
    
    model = genai.GenerativeModel('gemini-pro')
    
    response = model.generate_content(string)
    
    print(response.text)
    
main()