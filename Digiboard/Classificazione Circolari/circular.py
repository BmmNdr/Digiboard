import datetime


class Circular:
    def __init__(self, num, titolo, testo, dataPubblicazione):
        self.num = num
        self.titolo = titolo
        self.testo = testo
        
        splitted = dataPubblicazione.split(".")
        
        
        
        self.dataPubblicazione = datetime.date(int(splitted[2].strip()), int(splitted[1].strip()), int(splitted[0].strip()))