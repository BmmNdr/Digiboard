from unicodedata import numeric
from db import Database
from scraping import Scraper
from classifier import Classifier
import operator

def getLastNum(db):
    lastNum = db.fetch_data("SELECT MAX(num) FROM `circolare` WHERE YEAR(dataPubblicazione) = YEAR(NOW())")[0][0]
    
    return lastNum

if __name__ == '__main__':
    
    #db = Database(host="db.springmc.net", port="3307", username="digiboard", password="digiboard", database="digiboard")
    db = Database(host="localhost", port="3306", username="root", password="", database="digiboard")
    db.connect()
    
    classifier = Classifier(db)
    
    classes = []
    result = db.fetch_data("SELECT ID FROM classe")
    for row in result:
        classes.append(row[0])
    
    upTo = getLastNum(db)
    scraper = Scraper(upTo)
    circArray = scraper.scrape()
    
    for circular in circArray:
        circID = db.insert_query("INSERT INTO circolare (num, titolo, testo, dataPubblicazione) VALUES (%s, %s, %s, %s)", (circular.num, circular.titolo, circular.testo, circular.dataPubblicazione))
        
        print("Inserted circ. num. : " + str(circular.num))
        
        response = classifier.classify(circular.testo.replace("\\n", " "))
        
        query = "INSERT INTO indirizzamento(idCircolare, idClasse) VALUES"
        if(response == "%"):  # All classes
            for i in range(len(classes)):
                query += " (" + str(circID) + ", " + str(classes[i]) + "),"
        elif(response.isnumeric()): # All classes of a year
            for i in range(len(classes)):
                if(classes[i].find(response) != -1):
                    query += " (" + str(circID) + ", " + str(classes[i]) + "),"
        else:
            splittedResponse = response.split(";")
        
            for i in range(len(splittedResponse)):
                if(operator.contains(classes, splittedResponse[i])):
                    query += " (" + str(circID) + ", '" + str(splittedResponse[i]) + "'),"
                
        query = query[:-1]
        
        db.insert_query(query)
        
        print("Inserted completed with ID: " + str(circID) + " and classes: " + response)
        
        