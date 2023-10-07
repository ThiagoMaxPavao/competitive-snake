PFont poor;

PImage mapa;
PImage borda;

PImage cereja_imagem;
PImage bluber_imagem;

PImage cobraV11;
PImage cobraV12;
PImage cobraV13;
PImage cobraV14;
PImage cobraV21;
PImage cobraV22;
PImage cobraV23;
PImage cobraV24;
PImage cobraV31;
PImage cobraV32;
PImage cobraV33;
PImage cobraV34;
PImage cobraV41;
PImage cobraV42;
PImage cobraV51;
PImage cobraV52;
PImage cobraV53;
PImage cobraV54;
PImage cobraV61;
PImage cobraV62;
PImage cobraV63;
PImage cobraV64;
PImage cobraV71;
PImage cobraV72;
PImage cobraV73;
PImage cobraV74;
PImage cobraV81;
PImage cobraV82;
PImage cobraV83;
PImage cobraV84;
PImage cobraV91;
PImage cobraV92;
PImage cobraV93;
PImage cobraV94;

PImage cobraA11;
PImage cobraA12;
PImage cobraA13;
PImage cobraA14;
PImage cobraA21;
PImage cobraA22;
PImage cobraA23;
PImage cobraA24;
PImage cobraA31;
PImage cobraA32;
PImage cobraA33;
PImage cobraA34;
PImage cobraA41;
PImage cobraA42;
PImage cobraA51;
PImage cobraA52;
PImage cobraA53;
PImage cobraA54;
PImage cobraA61;
PImage cobraA62;
PImage cobraA63;
PImage cobraA64;
PImage cobraA71;
PImage cobraA72;
PImage cobraA73;
PImage cobraA74;
PImage cobraA81;
PImage cobraA82;
PImage cobraA83;
PImage cobraA84;
PImage cobraA91;
PImage cobraA92;
PImage cobraA93;
PImage cobraA94;

long Temp = 0;
long Temp1 = 0;

int VitV = 0;
int VitA = 0;

boolean partAndam = false;

int est = 0;

int control1=0;

cobra cobraA, cobraV;

comida cereja, bluber;

void setup() {
  size(1280,720);
  
  mapa = loadImage("Mapa.png");
  borda = loadImage("bordaMapa.png");
  
  cereja_imagem = loadImage("Cereja.png");
  bluber_imagem = loadImage("Blueberry.png");
  
  cobraV11 = loadImage("cobraV1,1.png");
  cobraV12 = loadImage("cobraV1,2.png");
  cobraV13 = loadImage("cobraV1,3.png");
  cobraV14 = loadImage("cobraV1,4.png");
  cobraV21 = loadImage("cobraV2,1.png");
  cobraV22 = loadImage("cobraV2,2.png");
  cobraV23 = loadImage("cobraV2,3.png");
  cobraV24 = loadImage("cobraV2,4.png");
  cobraV31 = loadImage("cobraV3,1.png");
  cobraV32 = loadImage("cobraV3,2.png");
  cobraV33 = loadImage("cobraV3,3.png");
  cobraV34 = loadImage("cobraV3,4.png");
  cobraV41 = loadImage("cobraV4,1.png");
  cobraV42 = loadImage("cobraV4,2.png");
  cobraV51 = loadImage("cobraV5,1.png");
  cobraV52 = loadImage("cobraV5,2.png");
  cobraV53 = loadImage("cobraV5,3.png");
  cobraV54 = loadImage("cobraV5,4.png");
  cobraV61 = loadImage("cobraV6,1.png");
  cobraV62 = loadImage("cobraV6,2.png");
  cobraV63 = loadImage("cobraV6,3.png");
  cobraV64 = loadImage("cobraV6,4.png");
  cobraV71 = loadImage("cobraV7,1.png");
  cobraV72 = loadImage("cobraV7,2.png");
  cobraV73 = loadImage("cobraV7,3.png");
  cobraV74 = loadImage("cobraV7,4.png");
  cobraV81 = loadImage("cobraV8,1.png");
  cobraV82 = loadImage("cobraV8,2.png");
  cobraV83 = loadImage("cobraV8,3.png");
  cobraV84 = loadImage("cobraV8,4.png");
  cobraV91 = loadImage("cobraV9,1.png");
  cobraV92 = loadImage("cobraV9,2.png");
  cobraV93 = loadImage("cobraV9,3.png");
  cobraV94 = loadImage("cobraV9,4.png");
  
  cobraA11 = loadImage("cobraA1,1.png");
  cobraA12 = loadImage("cobraA1,2.png");
  cobraA13 = loadImage("cobraA1,3.png");
  cobraA14 = loadImage("cobraA1,4.png");
  cobraA21 = loadImage("cobraA2,1.png");
  cobraA22 = loadImage("cobraA2,2.png");
  cobraA23 = loadImage("cobraA2,3.png");
  cobraA24 = loadImage("cobraA2,4.png");
  cobraA31 = loadImage("cobraA3,1.png");
  cobraA32 = loadImage("cobraA3,2.png");
  cobraA33 = loadImage("cobraA3,3.png");
  cobraA34 = loadImage("cobraA3,4.png");
  cobraA41 = loadImage("cobraA4,1.png");
  cobraA42 = loadImage("cobraA4,2.png");
  cobraA51 = loadImage("cobraA5,1.png");
  cobraA52 = loadImage("cobraA5,2.png");
  cobraA53 = loadImage("cobraA5,3.png");
  cobraA54 = loadImage("cobraA5,4.png");
  cobraA61 = loadImage("cobraA6,1.png");
  cobraA62 = loadImage("cobraA6,2.png");
  cobraA63 = loadImage("cobraA6,3.png");
  cobraA64 = loadImage("cobraA6,4.png");
  cobraA71 = loadImage("cobraA7,1.png");
  cobraA72 = loadImage("cobraA7,2.png");
  cobraA73 = loadImage("cobraA7,3.png");
  cobraA74 = loadImage("cobraA7,4.png");
  cobraA81 = loadImage("cobraA8,1.png");
  cobraA82 = loadImage("cobraA8,2.png");
  cobraA83 = loadImage("cobraA8,3.png");
  cobraA84 = loadImage("cobraA8,4.png");
  cobraA91 = loadImage("cobraA9,1.png");
  cobraA92 = loadImage("cobraA9,2.png");
  cobraA93 = loadImage("cobraA9,3.png");
  cobraA94 = loadImage("cobraA9,4.png");
  
  poor = createFont("PoorRichard.ttf", 32);
  textFont(poor);
  
  cobraA = new cobra(15, 15, 2);
  cobraV = new cobra(1, 1, 1);
  
  cereja = new comida(1);
  bluber = new comida(2);
}

void draw() {
  background(0);
  
  noTint();
  image(mapa,0,0);
  image(borda,720,0);
  
  mostraInfo();
  
  cobraA.verfMorte();
  cobraV.verfMorte();
  
  cobraA.printa();
  cobraV.printa();
  
  if(partAndam) {
    if(millis() - Temp > 175) {
      cobraA.atualizar();
      cobraV.atualizar();
      
      Temp = millis();
    }
    
    cereja.printa();
    bluber.printa();
    
    if(cereja.x == 256 && cereja.y == 256 && bluber.x == 256 && bluber.y == 256)
    {
      cereja.pegarLugar();
      bluber.pegarLugar();
    }
    
    if(cobraA.viva == false || cobraV.viva == false)
    partAndam = false;
  }
  
  if(est == 0) {
    fill(255,255,0);
    strokeWeight(5);
    stroke(0);
    
    rect(1000-150-11,585-50,300,100,50);
    
    if(mouseX > 1000-150-11 && mouseX < 1000-150-11+300 && mouseY > 585-50 && mouseY < 585-50+100) {
      fill(0,20);
      rect(1000-150-11,585-50,300,100,50);
      cursor(HAND);
    }
    else
    cursor(ARROW);
    
    fill(0);
    stroke(255);
    strokeWeight(25);
    textSize(60);
    text("Iniciar",920,600);
  }
  
  if(est == 1) {
    if(Temp1 == 0)
    Temp1=millis();
    
    fill(255,255,0);
    textSize(500);
    
    if(millis() - Temp1 < 1000) {
      text("3",220,530);
    }
    else if(millis() - Temp1 < 2000) {
      text("2",220,530);
    }
    else if(millis() - Temp1 < 3000) {
      text("1",270,530);
    }
    else {
      textSize(100);
      text("Vai!",720/2-80,720/2+27);
      
      if(control1 == 0) {
        cereja.pegarLugar();
        bluber.pegarLugar();
        
        cobraV.vel(1,0);
        cobraA.vel(-1,0);
        
        partAndam = true;
        
        control1=1;
      }
    }
    
    if(millis() - Temp1 < 3000) {
      fill(0);
      textSize(50);
      text("Partida",915,580);
      text("Iniciando",905,630);
    }
    
    if(millis() - Temp1 > 3500) {
      est = 2;
      control1 = 0;
    }
  }
  
  if(partAndam == false && est == 2)
  {
    if(cobraA.viva == false && cobraV.viva == false)
    control1 = 3;
    else if(cobraA.viva == false)
    control1 = 2;
    else if(cobraV.viva == false)
    control1 = 1;
    
    if(cobraA.viva == false && cobraV.viva == true)
    VitV++;
    else if(cobraA.viva == true && cobraV.viva == false)
    VitA++;
    
    est = 3;
  }
  
  if(est == 3) {
    fill(255,255,0);
    strokeWeight(5);
    stroke(0);
    
    rect(1000-150-11,585-50,300,100,50);
    
    if(mouseX > 1000-150-11 && mouseX < 1000-150-11+300 && mouseY > 585-50 && mouseY < 585-50+100) {
      fill(0,20);
      rect(1000-150-11,585-50,300,100,50);
      cursor(HAND);
    }
    else
    cursor(ARROW);
    
    fill(0);
    stroke(255);
    strokeWeight(25);
    textSize(50);
    text("Reposicionar",870,600);
  }
  
  if(partAndam)
  {
    fill(0);
    textSize(50);
    text("Partida Em",890,580);
    text("Andamento",880,630);
  }
}

void keyPressed() {
  if(cobraA.viva && cobraV.viva && partAndam)
  {
    if (keyCode == UP) {
      if(cobraA.tamanhoCorpo == 0)
      {
        cobraA.vel(0, -1);
      } else if(cobraA.corpo[2][cobraA.tamanhoCorpo - 1] != cobraA.y - 1)
      {
        cobraA.vel(0, -1);
      }
    } else if (keyCode == DOWN) {
      if(cobraA.tamanhoCorpo == 0)
      {
        cobraA.vel(0, 1);
      } else if(cobraA.corpo[2][cobraA.tamanhoCorpo - 1] != cobraA.y + 1)
      {
        cobraA.vel(0, 1);
      }
    } else if (keyCode == RIGHT) {
      if(cobraA.tamanhoCorpo == 0)
      {
        cobraA.vel(1, 0);
      } else if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] != cobraA.x + 1)
      {
        cobraA.vel(1, 0);
      }
    } else if (keyCode == LEFT) {
      if(cobraA.tamanhoCorpo == 0)
      {
        cobraA.vel(-1, 0);
      } else if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] != cobraA.x - 1)
      {
        cobraA.vel(-1, 0);
      }
    }
    
    if (key == 'w' || key == 'W') {
      if(cobraV.tamanhoCorpo == 0)
      {
        cobraV.vel(0, -1);
      } else if(cobraV.corpo[2][cobraV.tamanhoCorpo - 1] != cobraV.y - 1)
      {
        cobraV.vel(0, -1);
      }
    } else if (key == 's' || key == 'S') {
      if(cobraV.tamanhoCorpo == 0)
      {
        cobraV.vel(0, 1);
      } else if(cobraV.corpo[2][cobraV.tamanhoCorpo - 1] != cobraV.y + 1)
      {
        cobraV.vel(0, 1);
      }
    } else if (key == 'd' || key == 'D') {
      if(cobraV.tamanhoCorpo == 0)
      {
        cobraV.vel(1, 0);
      } else if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] != cobraV.x + 1)
      {
        cobraV.vel(1, 0);
      }
    } else if (key == 'a' || key == 'A') {
      if(cobraV.tamanhoCorpo == 0)
      {
        cobraV.vel(-1, 0);
      } else if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] != cobraV.x - 1)
      {
        cobraV.vel(-1, 0);
      }
    }
  }
}

void mostraInfo() {
  
  stroke(0);
  strokeWeight(3);
  textSize(42);
  if(cobraV.viva) { 
    fill(255,0,0);
    text("Viva", 925,57);
  } else {
    fill(0,0,0);
    text("Morta", 925,57);
  }
  
  stroke(0);
  strokeWeight(3);
  textSize(42);
  if(cobraA.viva) { 
    fill(0,0,255);
    text("Viva", 925,57+227);
  } else {
    fill(0,0,0);
    text("Morta", 925,57+227);
  }
  
  fill(0,0,0);
  
  text(cobraV.tamanhoCorpo + 1, 990, 210);
  
  text(cobraA.tamanhoCorpo + 1, 985, 210+230);
  
  text(VitV,1108, 110);
  
  text(VitA,1106, 110+235);
}

void mousePressed() {
  if(est == 0)
  if(mouseX > 1000-150-11 && mouseX < 1000-150-11+300 && mouseY > 585-50 && mouseY < 585-50+100) {
    est = 1;
    cursor(ARROW);
  }
  
  if(est == 3)
  if(mouseX > 1000-150-11 && mouseX < 1000-150-11+300 && mouseY > 585-50 && mouseY < 585-50+100) {
    est = 0;
    cursor(ARROW);
    
    cobraA.viva = true;
    cobraV.viva = true;
    
    cobraA.x = 15;
    cobraA.y = 15;
    
    cobraV.x = 1;
    cobraV.y = 1;
    
    cobraA.tamanhoCorpo = 0;
    cobraV.tamanhoCorpo = 0;
    
    cobraA.vel(-1,0);
    cobraV.vel(1,0);
    
    control1=0;
    
    Temp = 0;
    Temp1 = 0;
  }
}
