int Spielfeld[9];
int Spieler;
int Gewinner;

void Init( void )
{
  for (int i = 2; i < 15; i++)
  {
    pinMode(i, OUTPUT);
  }
}

void AllesAus( void )
{
  for (int i = 2; i < 15; i++)
  {
    digitalWrite(i, LOW);
  }
}

void InitVariablen( void )
{
  for (int i = 0; i < 9; i++)
  {
    Spielfeld[i] = 0;
  }
  Spieler = 1;
  Gewinner = 0;
}

int TasteGedrueckt( void )// ------------------------------------ ADC neu einlesen -----------------------------------------
{
  int Taste = 0;

  int ADC_Wert = analogRead( A7 );

  if ( (ADC_Wert > 850) && (ADC_Wert < 860) )
  {
    Taste = 1;
  }
  if ( (ADC_Wert > 725) && (ADC_Wert < 740) )
  {
    Taste = 2;
  }
  if ( (ADC_Wert > 635) && (ADC_Wert < 645) )
  {
    Taste = 3;
  }
  if ( (ADC_Wert > 455) && (ADC_Wert < 470) )
  {
    Taste = 4;
  }
  if ( (ADC_Wert > 500) && (ADC_Wert < 515) )
  {
    Taste = 5;
  }
  if ( (ADC_Wert > 560) && (ADC_Wert < 575) )
  {
    Taste = 6;
  }
  if ( (ADC_Wert > 415) && (ADC_Wert < 430) )
  {
    Taste = 7;
  }
  if ( (ADC_Wert > 385) && (ADC_Wert < 395) )
  {
    Taste = 8;
  }
  if ( (ADC_Wert > 355) && (ADC_Wert < 370) )
  {
    Taste = 9;
  }

  //Serial.println( Taste );

  return Taste;
}

void AusgabeStatusLED( void )
{
  switch (Spieler)
  {
    case 0:
        digitalWrite(5, HIGH);
        digitalWrite(7, HIGH);
        digitalWrite(8, HIGH);
        break;
      case 1:
        digitalWrite(5, LOW);
        digitalWrite(7, HIGH);
        digitalWrite(8, HIGH);
        break;
      case 2:
        digitalWrite(5, HIGH);
        digitalWrite(7, LOW);
        digitalWrite(8, HIGH);
        break;
      case 3:
        digitalWrite(5, HIGH);
        digitalWrite(7, HIGH);
        digitalWrite(8, LOW);
        break;
  }

  digitalWrite(11, HIGH);
  delay(1);
  digitalWrite(11, LOW);

  AllesAus();
}

void AusgabeLEDs()
{
  for(int i = 0; i < 3; i++)
  {
    switch ( Spielfeld[ 3*i ] )
    {
      case 0:
        digitalWrite(2, HIGH);
        digitalWrite(3, HIGH);
        digitalWrite(4, HIGH);
        break;
      case 1:
        digitalWrite(2, LOW);
        digitalWrite(3, HIGH);
        digitalWrite(4, HIGH);
        break;
      case 2:
        digitalWrite(2, HIGH);
        digitalWrite(3, LOW);
        digitalWrite(4, HIGH);
        break;
      case 3:
        digitalWrite(2, HIGH);
        digitalWrite(3, HIGH);
        digitalWrite(4, LOW);
        break;
    }
    switch ( Spielfeld[ 3*i + 1 ] )
    {
      case 0:
        digitalWrite(5, HIGH);
        digitalWrite(7, HIGH);
        digitalWrite(8, HIGH);
        break;
      case 1:
        digitalWrite(5, LOW);
        digitalWrite(7, HIGH);
        digitalWrite(8, HIGH);
        break;
      case 2:
        digitalWrite(5, HIGH);
        digitalWrite(7, LOW);
        digitalWrite(8, HIGH);
        break;
      case 3:
        digitalWrite(5, HIGH);
        digitalWrite(7, HIGH);
        digitalWrite(8, LOW);
        break;
    }
    switch ( Spielfeld[ 3*i + 2 ] )
    {
      case 0:
        digitalWrite(11, HIGH);
        digitalWrite(12, HIGH);
        digitalWrite(13, HIGH);
        break;
      case 1:
        digitalWrite(11, LOW);
        digitalWrite(12, HIGH);
        digitalWrite(13, HIGH);
        break;
      case 2:
        digitalWrite(11, HIGH);
        digitalWrite(12, LOW);
        digitalWrite(13, HIGH);
        break;
      case 3:
        digitalWrite(11, HIGH);
        digitalWrite(12, HIGH);
        digitalWrite(13, LOW);
        break;
    }

    switch(i)
    {
      case 0: digitalWrite(6, LOW); break;
      case 1: digitalWrite(9, LOW); break;
      case 2: digitalWrite(10, LOW); break;
    }

    delay(1);

    AllesAus();
  }
}

void PruefeGewinner( void )
{
  int Produkt = 1;
  
  for(int i = 0; i < 9; i++)
  {
    Produkt *= Spielfeld[i];
  }
  if(Produkt != 0)
  {
    Gewinner = -1;
  }
  
  for(int i = 0; i < 3; i++)
  {
    Produkt = Spielfeld[0+i]*Spielfeld[3+i]*Spielfeld[6+i];
    if(Produkt == 1)
    {
      Gewinner = 1;
    }
    if(Produkt == 8)
    {
      Gewinner = 2;
    }

    Produkt = Spielfeld[0+i*3]*Spielfeld[1+3*i]*Spielfeld[2+3*i];
    if(Produkt == 1)
    {
      Gewinner = 1;
    }
    if(Produkt == 8)
    {
      Gewinner = 2;
    }
  }

  Produkt = Spielfeld[0] * Spielfeld[4] * Spielfeld[8];
  if(Produkt == 1)
  {
    Gewinner = 1;
  }
  if(Produkt == 8)
  {
    Gewinner = 2;
  }

  Produkt = Spielfeld[2] * Spielfeld[4] * Spielfeld[6];
  if(Produkt == 1)
  {
    Gewinner = 1;
  }
  if(Produkt == 8)
  {
    Gewinner = 2;
  }
}

void SpielGewonnen( void )
{
  bool neuesSpiel = false;

  unsigned long Counter = millis();
  while((millis() - 2000) < Counter)
  {
    AusgabeLEDs();
  }

  int naechsterSpieler = Gewinner + 1;
  if (naechsterSpieler > 2)
  {
    naechsterSpieler = 1;
  }
  
  do
  {
    for(int i = 0; i < 9; i++)
    {
      Spielfeld[i] = Gewinner;
    }
    Spielfeld[4] = 0;

    Counter = millis();
    while((millis() - 1000) < Counter)
    {
      AusgabeLEDs();

      if(TasteGedrueckt() != 0)
      {
        neuesSpiel = true;
      }
    }

    for(int i = 0; i < 9; i++)
    {
      Spielfeld[i] = 0;
    }
    Spielfeld[4] = Gewinner;

    Counter = millis();
    while((millis() - 1000) < Counter)
    {
      AusgabeLEDs();

      if(TasteGedrueckt() != 0)
      {
        neuesSpiel = true;
      }
    }
  }while(!neuesSpiel);
  
  InitVariablen();
  Spieler = naechsterSpieler;
}

void SpielUnentschieden( void )
{
  bool neuesSpiel = false;

  unsigned long Counter = millis();
  while((millis() - 2000) < Counter)
  {
    AusgabeLEDs();
  }

  int naechsterSpieler = Gewinner + 1;
  if (naechsterSpieler > 2)
  {
    naechsterSpieler = 1;
  }
  
  do
  {    
    Spielfeld[0]=1;
    Spielfeld[2]=1;
    Spielfeld[6]=1;
    Spielfeld[8]=1;
    Spielfeld[4]=0;
    Spielfeld[1]=2;
    Spielfeld[3]=2;
    Spielfeld[5]=2;
    Spielfeld[7]=2;

    Counter = millis();
    while((millis() - 1000) < Counter)
    {
      AusgabeLEDs();

      if(TasteGedrueckt() != 0)
      {
        neuesSpiel = true;
      }
    }

    Spielfeld[0]=2;
    Spielfeld[2]=2;
    Spielfeld[6]=2;
    Spielfeld[8]=2;
    Spielfeld[4]=0;
    Spielfeld[1]=1;
    Spielfeld[3]=1;
    Spielfeld[5]=1;
    Spielfeld[7]=1;

    Counter = millis();
    while((millis() - 1000) < Counter)
    {
      AusgabeLEDs();

      if(TasteGedrueckt() != 0)
      {
        neuesSpiel = true;
      }
    }
  }while(!neuesSpiel);
  
  InitVariablen();
  Spieler = naechsterSpieler;
}

void setup() {
  Init();
  AllesAus();
  InitVariablen();

  //Serial.begin(9600);
}

void loop() {

  int Taste = TasteGedrueckt();

  if ((Taste != 0) && (Spielfeld[Taste - 1] == 0))
  {
    Spielfeld[Taste - 1] = Spieler;
    Spieler++;
  }

  if (Spieler > 2)
  {
    Spieler = 1;
  }

  AusgabeStatusLED();

  AusgabeLEDs();

  PruefeGewinner();

  //Serial.println(Gewinner);

  if(Gewinner > 0)
  {
    SpielGewonnen();
  }
  if(Gewinner == -1)
  {
    SpielUnentschieden();
  }
  
  /*
  for(int i = 0; i < 9; i++)
  {
    Serial.print(Spielfeld[i]);
    Serial.print("; ");
  }
  Serial.print("   ");
  Serial.print(analogRead(A7));
  Serial.print("   ");
  Serial.print(Taste);
  Serial.print("   ");
  Serial.print(Spieler);
  Serial.println(" ");
  */
}
