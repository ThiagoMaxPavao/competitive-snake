import processing.sound.*;
SoundFile musica;
SoundFile musicaDeFundo;
SoundFile musicaDeFundoP;
SoundFile Start321;
SoundFile cintiaSom;
SoundFile PARA;
SoundFile morri;
SoundFile herecomesthesun;

PFont poor;

PImage mapa;
PImage borda;
PImage bordaConfig;

PImage WasdT;
PImage WasdG;
PImage SetasT;
PImage SetasG;

PImage cereja_imagem;
PImage bluber_imagem;

PImage cobra11;
PImage cobra12;
PImage cobra13;
PImage cobra14;
PImage cobra21;
PImage cobra22;
PImage cobra23;
PImage cobra24;
PImage cobra31;
PImage cobra32;
PImage cobra33;
PImage cobra34;
PImage cobra41;
PImage cobra42;
PImage cobra51;
PImage cobra52;
PImage cobra53;
PImage cobra54;
PImage cobra61;
PImage cobra62;
PImage cobra63;
PImage cobra64;
PImage cobra71;
PImage cobra72;
PImage cobra73;
PImage cobra74;
PImage cobra81;
PImage cobra82;
PImage cobra83;
PImage cobra84;
PImage cobra91;
PImage cobra92;
PImage cobra93;
PImage cobra94;

PImage cobra11o;
PImage cobra12o;
PImage cobra13o;
PImage cobra14o;
PImage cobra51o;
PImage cobra52o;
PImage cobra53o;
PImage cobra54o;
PImage cobra61o;
PImage cobra62o;
PImage cobra63o;
PImage cobra64o;
PImage cobra71o;
PImage cobra72o;
PImage cobra73o;
PImage cobra74o;

PImage oculos;

PImage bezzon1;
PImage bezzon2;

PImage coracaoT;
PImage coracaoM;
PImage coracao0;

PImage henrique;

PImage clarao;

PImage BotOn;
PImage BotOff;

PImage ImgConfig;

PImage bloco;

PImage cintia_imagem;

PImage varinha;

PImage Alanzao;

long Temp = 0;
long Temp1 = 0;
long Tempcintia = 0;
long TempParede =0;

int VitV = 0;
int VitA = 0;

float volume;

boolean partAndam = false;
boolean config = false;

boolean musicasOn = true;
boolean sonsOn = true;

int est = 0;

int control1=0;

cobra cobraA, cobraV;

comida cereja, bluber;

Parede parede;

Cintia cint;

Petrif petrifica;

estrela Estrela;

bezzon Bezzon;

void setup() {
  size(1280,720);
  
  musica = new SoundFile(this, "musicaMario.wav");
  musicaDeFundo = new SoundFile(this, "musicaDeFundo.wav");
  musicaDeFundoP = new SoundFile(this, "musfunsempartanda.wav");
  Start321 = new SoundFile(this, "Start321.wav");
  cintiaSom = new SoundFile(this, "cintiaSom.wav");
  PARA = new SoundFile(this, "PARA.wav");
  morri = new SoundFile(this, "morri.wav");
  herecomesthesun = new SoundFile(this, "herecomesthesun.wav");
  
  mapa = loadImage("Mapa.png");
  borda = loadImage("bordaMapa.png");
  
  cereja_imagem = loadImage("Cereja.png");
  bluber_imagem = loadImage("Blueberry.png");
  
  cobra11 = loadImage("cobra1,1.png");
  cobra12 = loadImage("cobra1,2.png");
  cobra13 = loadImage("cobra1,3.png");
  cobra14 = loadImage("cobra1,4.png");
  cobra21 = loadImage("cobra2,1.png");
  cobra22 = loadImage("cobra2,2.png");
  cobra23 = loadImage("cobra2,3.png");
  cobra24 = loadImage("cobra2,4.png");
  cobra31 = loadImage("cobra3,1.png");
  cobra32 = loadImage("cobra3,2.png");
  cobra33 = loadImage("cobra3,3.png");
  cobra34 = loadImage("cobra3,4.png");
  cobra41 = loadImage("cobra4,1.png");
  cobra42 = loadImage("cobra4,2.png");
  cobra51 = loadImage("cobra5,1.png");
  cobra52 = loadImage("cobra5,2.png");
  cobra53 = loadImage("cobra5,3.png");
  cobra54 = loadImage("cobra5,4.png");
  cobra61 = loadImage("cobra6,1.png");
  cobra62 = loadImage("cobra6,2.png");
  cobra63 = loadImage("cobra6,3.png");
  cobra64 = loadImage("cobra6,4.png");
  cobra71 = loadImage("cobra7,1.png");
  cobra72 = loadImage("cobra7,2.png");
  cobra73 = loadImage("cobra7,3.png");
  cobra74 = loadImage("cobra7,4.png");
  cobra81 = loadImage("cobra8,1.png");
  cobra82 = loadImage("cobra8,2.png");
  cobra83 = loadImage("cobra8,3.png");
  cobra84 = loadImage("cobra8,4.png");
  cobra91 = loadImage("cobra9,1.png");
  cobra92 = loadImage("cobra9,2.png");
  cobra93 = loadImage("cobra9,3.png");
  cobra94 = loadImage("cobra9,4.png");
  
  cobra11o = loadImage("cobra1,1o.png");
  cobra12o = loadImage("cobra1,2o.png");
  cobra13o = loadImage("cobra1,3o.png");
  cobra14o = loadImage("cobra1,4o.png");
  cobra51o = loadImage("cobra5,1o.png");
  cobra52o = loadImage("cobra5,2o.png");
  cobra53o = loadImage("cobra5,3o.png");
  cobra54o = loadImage("cobra5,4o.png");
  cobra61o = loadImage("cobra6,1o.png");
  cobra62o = loadImage("cobra6,2o.png");
  cobra63o = loadImage("cobra6,3o.png");
  cobra64o = loadImage("cobra6,4o.png");
  cobra71o = loadImage("cobra7,1o.png");
  cobra72o = loadImage("cobra7,2o.png");
  cobra73o = loadImage("cobra7,3o.png");
  cobra74o = loadImage("cobra7,4o.png");
  
  oculos = loadImage("oculos.png");
  
  WasdT = loadImage("WasdT.png");
  WasdG = loadImage("WasdG.png");
  SetasT = loadImage("SetasT.png");
  SetasG = loadImage("SetasG.png");
  
  clarao = loadImage("clarao.png");
  
  bezzon1 = loadImage("bezzon1.png");
  bezzon2 = loadImage("bezzon2.png");
  
  coracaoT = loadImage("coracaoT.png");
  coracaoM = loadImage("coracaoM.png");
  coracao0 = loadImage("coracao0.png");
  
  henrique = loadImage("henrique.png");
  
  BotOn = loadImage("BotOn.png");
  BotOff = loadImage("BotOff.png");
  
  ImgConfig = loadImage("ImgConfig.png");
  
  cintia_imagem = loadImage("cintia.png");
  
  bordaConfig = loadImage("bordaMapaConfig.png");
  
  bloco = loadImage("bloco.png");
  
  Alanzao = loadImage("Alanzao.png");
  
  varinha = loadImage("varinha.png");
  poor = createFont("PoorRichard.ttf", 32);
  textFont(poor);
  
  cobraA = new cobra(15, 15, 2);
  cobraV = new cobra(1, 1, 1);
  
  petrifica = new Petrif();
  
  parede = new Parede();
  
  Estrela = new estrela();
  
  cereja = new comida(1);
  bluber = new comida(2);
  
  cint = new Cintia();
  
  Bezzon = new bezzon();
  
  musicaDeFundoP.play();
  
  cintiaSom.amp(0.75);
}

void draw() {
  
  
  
  background(0);
  
  noTint();
  
  image(mapa,0,0);
  image(borda,720,0);
  
  mostraInfo();  
  
  cobraA.printa();
  cobraV.printa();
  
  if(partAndam) {
    
    if(musicaDeFundoP.isPlaying())
    musicaDeFundoP.stop();
    
    if(!musicaDeFundo.isPlaying() && musicasOn && !herecomesthesun.isPlaying())
    musicaDeFundo.play();
    
    if(herecomesthesun.isPlaying() && musicaDeFundo.isPlaying())
    musicaDeFundo.pause();
    
    if((cobraA.estrelinhaMode || cobraV.estrelinhaMode || (cint.x!=200 && cint.y!=200) || PARA.isPlaying()) && musicaDeFundo.isPlaying() && !sonsOn)
    {
      musicaDeFundo.amp(sqrt(2)-1);
      volume = sqrt(2)-1;
    }
    
    if(musicaDeFundo.isPlaying() && !cobraA.estrelinhaMode && !cobraV.estrelinhaMode && volume!=1 && cint.x==200 && cint.y==200 && !PARA.isPlaying())
    {
      musicaDeFundo.amp(0.80);
      volume = 1;
    }
    
    if(millis() - Temp > 175) {
      
      cobraA.atualizar();
      cobraV.atualizar();
      
      cobraA.verfMorte();
      cobraV.verfMorte();
      
      if(!cobraA.viva || !cobraV.viva)
      morri.play();
      
      parede.atualiza();
      
      Estrela.atualiza();
      
      cint.atualiza();
      
      petrifica.atualiza();
      
      Bezzon.atualiza();
      
      Temp = millis();
    }
    
    cereja.printa();
    bluber.printa();
    
    petrifica.printa();
    
    parede.calcAlpha();
    parede.printa();
    
    cint.printa();
    Estrela.printa();
    
    Bezzon.printa();
    
    if(cereja.x == 256 && cereja.y == 256 && bluber.x == 256 && bluber.y == 256)
    {
      cereja.pegarLugar();
      bluber.pegarLugar();
    }
    
    if(cobraA.viva == false || cobraV.viva == false)
    partAndam = false;
    
  }
  
  if(est == 0) {
    
    if(!musicaDeFundoP.isPlaying() && musicasOn)
    musicaDeFundoP.play();
    
    fill(255,255,0);
    strokeWeight(5);
    stroke(0);
    
    if(!config)
    rect(1000-150-11-70,585-50,300,100,50);
    ellipse(1168,585,100,100);
    
    float distancia = dist(mouseX,mouseY,1168,585);
    
    if((mouseX > 1000-150-11-70 && mouseX < 1000-150-11-70+300 && mouseY > 585-50 && mouseY < 585-50+100) || (distancia<52)) {
      fill(0,20);
      
      if(mouseX > 1000-150-11-70 && mouseX < 1000-150-11-70+300 && mouseY > 585-50 && mouseY < 585-50+100 && !config)
      rect(1000-150-11-70,585-50,300,100,50);
      else if(distancia<52)
      ellipse(1168,585,100,100);
      
      if((distancia<52 && config) || (!config))
      cursor(HAND); 
    }
    else
    cursor(ARROW);
    
    fill(0);
    stroke(255);
    strokeWeight(25);
    textSize(60);
    
    if(!config)
    text("Iniciar",920-70,600);
    
    image(ImgConfig,1145,560,50,50);
  }
  
  if(est == 1) {
    
    if(musicaDeFundoP.isPlaying())
    musicaDeFundoP.stop();
    
    config = false;
    
    if(!Start321.isPlaying() && sonsOn)
    Start321.play();
    
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
        TempParede = millis();
        
        cobraA.ultVidaPega = millis();
        cobraV.ultVidaPega = millis();
        
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
    if(musicaDeFundo.isPlaying())
    musicaDeFundo.stop();
    
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
    
    cereja.printa();
    bluber.printa();
    petrifica.printa();
    parede.printa();
    cint.printa();
    Estrela.printa();
  }
  
  if(config)
  {
    tint(255,0,0);
    image(WasdT,900,150,100,100*WasdT.height/WasdT.width);
    image(WasdG,1100,180,100,100*WasdG.height/WasdG.width);
    
    tint(0,0,255);
    image(SetasT,900,375,100,100*WasdT.height/WasdT.width);
    image(SetasG,1100,375+30,100,100*SetasG.height/SetasG.width);
    
    strokeWeight(4);
    noFill();
    stroke(0);
    
    if(!cobraV.jogabilidade)
    rect(890,140,118,85,15);
    else
    rect(1090,171,118,54,15);
    
    if(!cobraA.jogabilidade)
    rect(890,140+225,118,85,15);
    else
    rect(1090,171+225,118,54,15);
    
    strokeWeight(2);
    fill(0,20);
    
    if(sobreRect(890,140,118,85))
    rect(890,140,118,85,15);
    if(sobreRect(1090,171,118,54))
    rect(1090,171,118,54,15);
    if(sobreRect(890,140+225,118,85))
    rect(890,140+225,118,85,15);
    if(sobreRect(1090,171+225,118,54))
    rect(1090,171+225,118,54,15);
    
    fill(0);
    stroke(255);
    strokeWeight(10);
    textSize(30);
    
    text("Controles",995,130);
    text("Controles",995,130+225);
    
    text("Músicas",760+100,600-18);
    text("Sons",760+100,665-15);
    
    
    textSize(40);
    
    text("Audio",865,525);
    
    noTint();
    if(musicasOn)
    image(BotOn,760,550,85,85*BotOn.height/BotOn.width);
    else
    image(BotOff,760,550,85,85*BotOn.height/BotOn.width);
    
    if(sonsOn)
    image(BotOn,760,615,85,85*BotOn.height/BotOn.width);
    else
    image(BotOff,760,615,85,85*BotOn.height/BotOn.width);
    
    fill(255,255,0);
    strokeWeight(5);
    stroke(0);
    
    rect(1000-25,585-50+12,115,75,50); 
    
    fill(0,20);
    
    if(sobreRect(1000-25,585-50+12,115,75))
    rect(1000-25,585-50+12,115,75,50);
    
    fill(0);
    stroke(255);
    strokeWeight(10);
    textSize(30);
    
    text("Resetar",992,580);
    text("placar",997,607);
    
    
    
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
    if(cobraA.confusa)
    {
      if(cobraA.jogabilidade)
      {
        if (keyCode == RIGHT || key == '6') {
          if(cobraA.vx == 1)
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(0, -1);
            } else if(cobraA.corpo[2][cobraA.tamanhoCorpo - 1] != cobraA.y - 1)
            cobraA.vel(0,-1);
          }
          else if(cobraA.vy == -1)
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(-1, 0);
            } else if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] != cobraA.x - 1)
            cobraA.vel(-1,0);
          }
          else if(cobraA.vx == -1)
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(0, 1);
            } else if(cobraA.corpo[2][cobraA.tamanhoCorpo - 1] != cobraA.y + 1)
            cobraA.vel(0,1);
          }
          else
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(1, 0);
            } else if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] != cobraA.x + 1)
            cobraA.vel(1,0);
          }
        } else if (keyCode == LEFT || key == '4'){
          if(cobraA.vx == 1)
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(0, 1);
            } else if(cobraA.corpo[2][cobraA.tamanhoCorpo - 1] != cobraA.y + 1)
            cobraA.vel(0,1);
          }
          else if(cobraA.vy == 1)
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(-1,0);
            } else if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] != cobraA.x - 1)
            cobraA.vel(-1,0);
          }
          else if(cobraA.vx == -1)
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(0, -1);
            } else if(cobraA.corpo[2][cobraA.tamanhoCorpo - 1] != cobraA.y - 1)
            cobraA.vel(0,-1);
          }
          else
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(1, 0);
            } else if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] != cobraA.x + 1)
            cobraA.vel(1,0);
          }
        }
      }
      else
      {
        if (keyCode == DOWN || key == '5') {
          if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
          {
            cobraA.vel(0, -1);
          } else if(cobraA.corpo[2][cobraA.tamanhoCorpo - 1] != cobraA.y - 1)
          {
            cobraA.vel(0, -1);
          }
        } else if (keyCode == UP || key == '8') {
          if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
          {
            cobraA.vel(0, 1);
          } else if(cobraA.corpo[2][cobraA.tamanhoCorpo - 1] != cobraA.y + 1)
          {
            cobraA.vel(0, 1);
          }
        } else if (keyCode == LEFT || key == '4'){
          if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
          {
            cobraA.vel(1, 0);
          } else if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] != cobraA.x + 1)
          {
            cobraA.vel(1, 0);
          }
        } else if (keyCode == RIGHT || key == '6') {
          if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
          {
            cobraA.vel(-1, 0);
          } else if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] != cobraA.x - 1)
          {
            cobraA.vel(-1, 0);
          }
        }
      }
    }
    else
    {
      if(cobraA.jogabilidade)
      {
        if (keyCode == LEFT || key == '4') {
          if(cobraA.vx == 1)
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(0, -1);
            } else if(cobraA.corpo[2][cobraA.tamanhoCorpo - 1] != cobraA.y - 1)
            cobraA.vel(0,-1);
          }
          else if(cobraA.vy == -1)
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(-1, 0);
            } else if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] != cobraA.x - 1)
            cobraA.vel(-1,0);
          }
          else if(cobraA.vx == -1)
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(0, 1);
            } else if(cobraA.corpo[2][cobraA.tamanhoCorpo - 1] != cobraA.y + 1)
            cobraA.vel(0,1);
          }
          else
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(1, 0);
            } else if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] != cobraA.x + 1)
            cobraA.vel(1,0);
          }
        } else if (keyCode == RIGHT || key == '6'){
          if(cobraA.vx == 1)
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(0, 1);
            } else if(cobraA.corpo[2][cobraA.tamanhoCorpo - 1] != cobraA.y + 1)
            cobraA.vel(0,1);
          }
          else if(cobraA.vy == 1)
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(-1,0);
            } else if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] != cobraA.x - 1)
            cobraA.vel(-1,0);
          }
          else if(cobraA.vx == -1)
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(0, -1);
            } else if(cobraA.corpo[2][cobraA.tamanhoCorpo - 1] != cobraA.y - 1)
            cobraA.vel(0,-1);
          }
          else
          {
            if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
            {
              cobraA.vel(1, 0);
            } else if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] != cobraA.x + 1)
            cobraA.vel(1,0);
          }
        }
      }
      else
      {
        if (keyCode == UP || key == '8') {
          if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
          {
            cobraA.vel(0, -1);
          } else if(cobraA.corpo[2][cobraA.tamanhoCorpo - 1] != cobraA.y - 1)
          {
            cobraA.vel(0, -1);
          }
        } else if (keyCode == DOWN || key == '5') {
          if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
          {
            cobraA.vel(0, 1);
          } else if(cobraA.corpo[2][cobraA.tamanhoCorpo - 1] != cobraA.y + 1)
          {
            cobraA.vel(0, 1);
          }
        } else if (keyCode == RIGHT || key == '6') {
          if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
          {
            cobraA.vel(1, 0);
          } else if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] != cobraA.x + 1)
          {
            cobraA.vel(1, 0);
          }
        } else if (keyCode == LEFT || key == '4') {
          if(cobraA.tamanhoCorpo == 0 || cobraA.estrelinhaMode)
          {
            cobraA.vel(-1, 0);
          } else if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] != cobraA.x - 1)
          {
            cobraA.vel(-1, 0);
          }
        }
      }
    }
    
    if(cobraV.confusa)                                                  // COBRA V
    {
      if(cobraV.jogabilidade)
      {
        if (keyCode == 'D' || key == 'd') {
          if(cobraV.vx == 1)
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(0, -1);
            } else if(cobraV.corpo[2][cobraV.tamanhoCorpo - 1] != cobraV.y - 1)
            cobraV.vel(0,-1);
          }
          else if(cobraV.vy == -1)
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(-1, 0);
            } else if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] != cobraV.x - 1)
            cobraV.vel(-1,0);
          }
          else if(cobraV.vx == -1)
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(0, 1);
            } else if(cobraV.corpo[2][cobraV.tamanhoCorpo - 1] != cobraV.y + 1)
            cobraV.vel(0,1);
          }
          else
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(1, 0);
            } else if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] != cobraV.x + 1)
            cobraV.vel(1,0);
          }
        } else if (keyCode == 'A' || key == 'a'){
          if(cobraV.vx == 1)
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(0, 1);
            } else if(cobraV.corpo[2][cobraV.tamanhoCorpo - 1] != cobraV.y + 1)
            cobraV.vel(0,1);
          }
          else if(cobraV.vy == 1)
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(-1,0);
            } else if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] != cobraV.x - 1)
            cobraV.vel(-1,0);
          }
          else if(cobraV.vx == -1)
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(0, -1);
            } else if(cobraV.corpo[2][cobraV.tamanhoCorpo - 1] != cobraV.y - 1)
            cobraV.vel(0,-1);
          }
          else
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(1, 0);
            } else if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] != cobraV.x + 1)
            cobraV.vel(1,0);
          }
        }
      }
      else
      {
        if (keyCode == 'S' || key == 's') {
          if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
          {
            cobraV.vel(0, -1);
          } else if(cobraV.corpo[2][cobraV.tamanhoCorpo - 1] != cobraV.y - 1)
          {
            cobraV.vel(0, -1);
          }
        } else if (keyCode == 'W' || key == 'w') {
          if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
          {
            cobraV.vel(0, 1);
          } else if(cobraV.corpo[2][cobraV.tamanhoCorpo - 1] != cobraV.y + 1)
          {
            cobraV.vel(0, 1);
          }
        } else if (keyCode == 'A' || key == 'a'){
          if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
          {
            cobraV.vel(1, 0);
          } else if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] != cobraV.x + 1)
          {
            cobraV.vel(1, 0);
          }
        } else if (keyCode == 'D' || key == 'd') {
          if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
          {
            cobraV.vel(-1, 0);
          } else if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] != cobraV.x - 1)
          {
            cobraV.vel(-1, 0);
          }
        }
      }
    }
    else
    {
      if(cobraV.jogabilidade)
      {
        if (keyCode == 'A' || key == 'a') {
          if(cobraV.vx == 1)
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(0, -1);
            } else if(cobraV.corpo[2][cobraV.tamanhoCorpo - 1] != cobraV.y - 1)
            cobraV.vel(0,-1);
          }
          else if(cobraV.vy == -1)
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(-1, 0);
            } else if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] != cobraV.x - 1)
            cobraV.vel(-1,0);
          }
          else if(cobraV.vx == -1)
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(0, 1);
            } else if(cobraV.corpo[2][cobraV.tamanhoCorpo - 1] != cobraV.y + 1)
            cobraV.vel(0,1);
          }
          else
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(1, 0);
            } else if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] != cobraV.x + 1)
            cobraV.vel(1,0);
          }
        } else if (keyCode == 'D' || key == 'd'){
          if(cobraV.vx == 1)
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(0, 1);
            } else if(cobraV.corpo[2][cobraV.tamanhoCorpo - 1] != cobraV.y + 1)
            cobraV.vel(0,1);
          }
          else if(cobraV.vy == 1)
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(-1,0);
            } else if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] != cobraV.x - 1)
            cobraV.vel(-1,0);
          }
          else if(cobraV.vx == -1)
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(0, -1);
            } else if(cobraV.corpo[2][cobraV.tamanhoCorpo - 1] != cobraV.y - 1)
            cobraV.vel(0,-1);
          }
          else
          {
            if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
            {
              cobraV.vel(1, 0);
            } else if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] != cobraV.x + 1)
            cobraV.vel(1,0);
          }
        }
      }
      else
      {
        if (keyCode == 'W' || key == 'w') {
          if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
          {
            cobraV.vel(0, -1);
          } else if(cobraV.corpo[2][cobraV.tamanhoCorpo - 1] != cobraV.y - 1)
          {
            cobraV.vel(0, -1);
          }
        } else if (keyCode == 'S' || key == 's') {
          if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
          {
            cobraV.vel(0, 1);
          } else if(cobraV.corpo[2][cobraV.tamanhoCorpo - 1] != cobraV.y + 1)
          {
            cobraV.vel(0, 1);
          }
        } else if (keyCode == 'D' || key == 'd') {
          if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
          {
            cobraV.vel(1, 0);
          } else if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] != cobraV.x + 1)
          {
            cobraV.vel(1, 0);
          }
        } else if (keyCode == 'A' || key == 'a') {
          if(cobraV.tamanhoCorpo == 0 || cobraV.estrelinhaMode)
          {
            cobraV.vel(-1, 0);
          } else if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] != cobraV.x - 1)
          {
            cobraV.vel(-1, 0);
          }
        }
      }
    }
  }
  else
  {
    if(key == ' ' || key == TAB || key == ENTER){
      if(est == 0 && !config){
        est = 1;
        cursor(ARROW);
      }
      
      if(est == 3)
      reseta();
    }
  }
}

void mostraInfo() {
  
  if(config)
  image(bordaConfig,720,0);
  
  
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
  
  
  if(!config)
  {
    text(cobraV.tamanhoCorpo + 1, 990, 210);
    
    text(cobraA.tamanhoCorpo + 1, 985, 210+230);
    
    text(VitV,1108, 110);
    
    text(VitA,1106, 110+235);
    
    int xInicial = 1030;
    
    for(int i =0;i<5;i++)
    {
      if(cobraV.vidas>i)
      image(coracaoT,xInicial+i*45,180,40,40);
      else
      image(coracao0,xInicial+i*45,180,40,40);
    }
   
    
    for(int i =0;i<5;i++)
    {
      if(cobraA.vidas>i)
      image(coracaoT,xInicial+i*45,180+225,40,40);
      else
      image(coracao0,xInicial+i*45,180+225,40,40);
    }
  }
  
  
}

void mousePressed() {
  
  if(config)
  {
    if(sobreRect(890,140,118,85))
    cobraV.jogabilidade=false;
    if(sobreRect(1090,171,118,54))
    cobraV.jogabilidade=true;
    if(sobreRect(890,140+225,118,85))
    cobraA.jogabilidade=false;
    if(sobreRect(1090,171+225,118,54))
    cobraA.jogabilidade=true;
    
    if(sobreRect(1000-25,585-50+12,115,75))
    {
      VitV = 0;
      VitA = 0;
    }
    
    if(sobreRect(760,550,85,85*BotOn.height/BotOn.width))
    {
      musicasOn=!musicasOn;
      if(musicaDeFundoP.isPlaying())
      musicaDeFundoP.pause();
    }
    if(sobreRect(760,615,85,85*BotOn.height/BotOn.width))
    sonsOn=!sonsOn;
    
  }
  
  if(est == 0){
    if(mouseX > 1000-150-11-70 && mouseX < 1000-150-11-70+300 && mouseY > 585-50 && mouseY < 585-50+100 && !config){
      est = 1;
    }
    
    float distancia = dist(mouseX,mouseY,1168,585);
    
    if(distancia<52) {
      config=!config;
    }
    
    cursor(ARROW);
    
  }
  
  if(est == 3)
  if(mouseX > 1000-150-11 && mouseX < 1000-150-11+300 && mouseY > 585-50 && mouseY < 585-50+100) 
  reseta();
}

void reseta()
{
  est = 0;
  cursor(ARROW);
    
  cint.x=200;
  cint.y=200;
    
  cobraA.viva = true;
  cobraV.viva = true;
    
  cobraA.petrificado = false;
  cobraV.petrificado = false;
    
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
  
  parede.tamanho = 8;
  
  cobraA.estrelinhaMode=false;
  cobraV.estrelinhaMode=false;
  
  cobraA.vidas=3;
  cobraV.vidas=3;
  
  Estrela.x=100;
  Estrela.y=100;
  
  Bezzon.estado = 0;
  
  Bezzon.x1=100;
  Bezzon.x2=100;
  
  Bezzon.y1=100;
  Bezzon.y2=100;
  
  cobraA.comOculos=false;
  cobraV.comOculos=false;
  
  cobraA.confusa=false;
  cobraV.confusa=false;
  
  for(int i = 0; i <= 16; i++)
  {
    for(int j = 0; j <= 16; j++)
    {
      parede.blocos[i][j] = false;
      parede.proxblocos[i][j] = false;
    }
  }
  
}

boolean sobreRect(int x, int y, int l, int a)
{
  if(mouseX>=x && mouseX<=x+l && mouseY>=y && mouseY<=y+a)
  return true;
  else
  return false;
}
