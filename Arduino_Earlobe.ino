int sensor_val;
void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  sensor_val =analogRead(A0);
  Serial.println(sensor_val);
  delay(1);
}
