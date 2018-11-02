#define pinA 0
#define pinB 1
#define pinC 2
#define pinD 3

#define AD_Wandler A2

int Stunde, Minute, Sekunde;

unsigned long lastUpdate, delayUpdate = 1000;

void setup() {
  // set all Pins to input Mode
  DDRB = 0;

  Stunde = Minute = Sekunde = 0;

  lastUpdate = millis();
}

void loop() {
  if ( (millis() - delayUpdate ) > lastUpdate) {
    // antoher second had been passed. Continue counting
    lastUpdate += delayUpdate;

    Sekunde++;
    if (Sekunde > 59) {
      Sekunde = 0;
      Minute++;
    }
  }

  // maybe an button had been pushed. you have to react
  TasteGedrueckt();

  // display the time on the LEDs
  if (Minute >> 5) {
    SetIO(-1, 0, 0, 1);
  }
  if ((Minute >> 4) % 2) {
    SetIO(1, 0, 0, -1);
  }
  if ((Minute >> 3) % 2) {
    SetIO(-1, 0, 1, 0);
  }
  if ((Minute >> 2) % 2) {
    SetIO(1, 0, -1, 0);
  }
  if ((Minute >> 1) % 2) {
    SetIO(-1, 1, 0, 0);
  }
  if (Minute % 2) {
    SetIO(1, -1, 0, 0);
  }

  if ((Stunde >> 4) % 2) {
    SetIO(0, 1, -1, 0);
  }
  if ((Stunde >> 3) % 2) {
    SetIO(0, -1, 0, 1);
  }
  if ((Stunde >> 2) % 2) {
    SetIO(0, 1, 0, -1);
  }
  if ((Stunde >> 1) % 2) {
    SetIO(0, 0, 1, -1);
  }
  if (Stunde % 2) {
    SetIO(0, 0, -1, 1);
  }
  if (Sekunde % 2) {
    SetIO(0, -1, 1, 0);
  }

  // set all Pins to input Mode
  DDRB = 0;
}

inline void TasteGedrueckt( void ) {
  int ADC_Wert = analogRead(A2);

  if ( (ADC_Wert > 845) && (ADC_Wert < 860) )  {
    //Taste = 0;
    UpdateTime(0, 1);
  }
  if ( (ADC_Wert > 725) && (ADC_Wert < 735) )  {
    //Taste = 1;
    UpdateTime(0, -1);
  }
  if ( (ADC_Wert > 635) && (ADC_Wert < 645) )  {
    //Taste = 2;
    UpdateTime(1, 0);
  }
  if ( (ADC_Wert > 560) && (ADC_Wert < 570) )  {
    //Taste = 3;
    UpdateTime(-1, 0);
  }
}


void UpdateTime( int StundeChange, int MinuteChange) {
  Minute += MinuteChange;
  Stunde += StundeChange;

  if (Minute > 59) {
    Minute = 0;
    Stunde++;
  }
  if (Minute < 0) {
    Minute = 0;
    Stunde--;
  }

  if (Stunde > 23) {
    Stunde = 0;
  }
  if (Stunde < 0) {
    Stunde = 23;
  }
}

void SetIO( int StateA, int StateB, int StateC, int StateD) {
  SetIOpin(StateA, pinA);
  SetIOpin(StateB, pinB);
  SetIOpin(StateC, pinC);
  SetIOpin(StateD, pinD);

  delay(1);
}

void SetIOpin(int State, int Pin) {
  if (State == 0) {
    pinMode(Pin, INPUT);
  }
  else {
    pinMode(Pin, OUTPUT);

    if (State > 0) {
      digitalWrite(Pin, HIGH);
    }
    else {
      digitalWrite(Pin, LOW);
    }
  }
}

