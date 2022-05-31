#include "DHT.h"
#define DHTPIN 5     // Digital pin connected to the DHT sensor
#define DHTTYPE DHT11   // DHT 11
DHT dht(DHTPIN, DHTTYPE);

float hum;
float temp;
char priority;
char toggle;
String data;
char test[6];

String toJSON(float hum, float temp) { 
  return String("{\"readings\": ") + "[" + hum + "," + temp + "," + hum + "," + temp + "]}";
}

void updateSerial(float hum, float temp) {
    data = "";
    data = toJSON(hum, temp); 
    delay(2000);
    toggle = Serial.read();
    Serial.print(data);
    digitalWrite(8, toggle - '0');
}

void setup() {
  Serial.begin(38400);
  dht.begin();
  pinMode(8, LOW);
}

void loop() {  
hum = dht.readHumidity();
temp = dht.readTemperature();
updateSerial(hum, temp);
}
