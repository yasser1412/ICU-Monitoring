#include "ESP8266WiFi.h"
#include <WiFiClient.h>
#include <Wire.h>
#include <ESP8266HTTPClient.h>
#include "SoftwareSerial.h"

const char *ssid = "NEYA";
const char *password = "neya123";
const char *server_url = "http://172.28.128.65:8080/post_readings";

WiFiClient client;
HTTPClient http;

int httpResponseCode;
String payload;
int wifiCount;
String data;
char priority = '0';

void setup() {
  Serial.begin(38400);
  Serial.begin(9600);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    wifiCount++;
    if (wifiCount == 20) {
      wifiCount = 0;

    }
    //    Serial.print(".");
  }
  //  Serial.println("WiFi connected");
  delay(500);

  //  mySerial.begin(9600);

}

void loop() {
    //  http.begin(client, server_url2);
  //
  //  httpResponseCode = http.GET();
  //  if (httpResponseCode > 0)
  //    payload = http.getString();
  //  priority = payload[0];
  //  http.end();
  //  if (mySerial.available())
  //   Serial.write(mySerial.read());
  //  if(Serial.available())
  //   mySerial.write(Serial.read()):

  data = "55";
  //  Serial.println(Serial.read());
  if (Serial.available()) {
    data = Serial.readString();
    if (payload.length() == 0)
      Serial.write('0');
    else
      Serial.write(payload[0]);
    //    Serial.println(data);
  }

  //  if (data.length() > 1) {
  http.begin(client, server_url);

  http.addHeader("Content-Type", "application/json");
  httpResponseCode = http.POST(data);
  //  Serial.println(httpResponseCode);
  if (httpResponseCode > 0) {

    if (httpResponseCode == HTTP_CODE_OK || httpResponseCode == HTTP_CODE_MOVED_PERMANENTLY) {
      payload = http.getString();
    }
  }
  http.end();
  delay(1000);

}
