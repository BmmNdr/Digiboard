import requests
import re
from bs4 import BeautifulSoup
from circular import Circular

class Scraper:

  def __init__(self, upTo):
    self.flag = True
    self.count = 1
    self.upTo = upTo

  def scrape(self):
    circArray = []
    
    while self.flag:
      url = f"https://www.ismonnet.edu.it/index.php/circolare/page/{self.count}/"
      self.count+=1
      response = requests.get(url)
      html = BeautifulSoup(response.text, 'html.parser')

      all_as = html.select('h3 a')
      allCircNum = html.findAll('small', class_='h6 text-greendark')

      for index, a in enumerate(all_as):
        if a.has_attr('href'):
            #circLink = a['href']
            
            for indexCirc, val in enumerate(allCircNum):
              if(indexCirc == index):
                circNum = (int((re.findall(r'\d+', val.text))[0]))
                
            if(int(self.upTo) == circNum):
              flag = False
              break
            
            urlCric = a['href']
            responseCric = requests.get(urlCric)
            
            html = BeautifulSoup(responseCric.text, 'html.parser')
            circTextDiv = html.find_all('div', class_='col-lg-8 wysiwig-text')
            
            data = html.find_all('div', class_='article-footer')[0].find_all('p')[0].contents[1]
            
            circText = ""
            for i in circTextDiv:
              circText += i.text
            
            circArray.append(Circular(circNum, a.text, circText, data))
            
      return circArray