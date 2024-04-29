import requests
import re
from bs4 import BeautifulSoup

flag = True
count = 1
upTo = input("Inserire il numero della circolare dalla quale si vuole iniziare a screpare: ")

while flag:
  url = f"https://www.ismonnet.edu.it/index.php/circolare/page/{count}/"
  count+=1
  response = requests.get(url)
  html = BeautifulSoup(response.text, 'html.parser')

  all_as = html.select('h3 a')
  allCircNum = html.findAll('small', class_='h6 text-greendark')

  for index, a in enumerate(all_as):
    if a.has_attr('href'):
        #print(a['href']) printa il link
        for indexCirc, val in enumerate(allCircNum):
          if(indexCirc == index):
            circNum = (int((re.findall(r'\d+', val.text))[0]))
        if(int(upTo) == circNum):
          flag = False
          break
        
        urlCric = a['href']
        responseCric = requests.get(urlCric)
        
        html = BeautifulSoup(responseCric.text, 'html.parser')
        print(circNum)
        print(a.text)
        circText = html.find_all('div', class_='col-lg-8 wysiwig-text')
        
        data = html.find_all('div', class_='article-footer')[0].find_all('p')[0].contents[1]
        
        for i in circText:
          print(i.text)
          
        print(data)