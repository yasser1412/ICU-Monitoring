import requests
x = requests.get('https://meirr.pythonanywhere.com/GetVitalSigns/')
print(x.text)