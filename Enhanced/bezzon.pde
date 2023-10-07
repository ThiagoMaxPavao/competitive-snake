class bezzon {
  
  int estado = 0;
  
  int x1=100;
  int x2=100;
  
  int y1=100;
  int y2=100;
  
  long temp1;
  long temp2;
  
  boolean animacao=false;
  
  bezzon(){}
  
  void atualiza()
  {
    if(estado==0)
    {
      sorteia();
    }
    
    if(estado==1)
    {
      if(cobraA.x == x1 && cobraA.y == y1)
      {
        cobraA.comOculos = true;
        some(1);
      }
      if(cobraV.x == x1 && cobraV.y == y1)
      {
        cobraV.comOculos = true;
        some(1);
      }
      if(cobraA.x == x2 && cobraA.y == y2)
      {
        cobraA.comOculos = true;
        some(2);
      }
      if(cobraV.x == x2 && cobraV.y == y2)
      {
        cobraV.comOculos = true;
        some(2);
      }
      
      if(millis()-temp1>=4000)
      estado=2;
    }
    
    if(estado==2)
    {
      some(1);
      some(2);
      
      temp1=millis();
      
      estado=3;
    }
    
    if(estado==3 && millis()-temp1>1500)
    {
      if(!cobraA.comOculos && !cobraA.estrelinhaMode)
      cobraA.confusa =true;
      
      if(!cobraV.comOculos && !cobraV.estrelinhaMode)
      cobraV.confusa =true;
    }
    
    if(millis()-temp1>2500 && estado==3)
    {
      estado=4;
      temp1=millis();
      
      cobraA.comOculos=false;
      cobraV.comOculos=false;
    }
    
    if(estado == 4 && millis()-temp1>5000)
    {
      cobraA.confusa=false;
      cobraV.confusa=false;
    }
    
  }
  
  void printa()
  {
    if(estado==1){
      image(henrique,20+40*7,20+40*7,120,120);
    
      if(x1!=100 && y1!=100)
      image(oculos,20+40*x1,20+40*y1,40,40);
      if(x2!=100 && y2!=100)
      image(oculos,20+40*x2,20+40*y2,40,40);
    }
    
    if(estado==3)
    {
      
      if(millis()-temp2>50)
      {
        animacao=!animacao;
        temp2=millis();
      }
      
      if(animacao)
      image(bezzon1,20+40*7,20+40*7,120,120);
      else
      image(bezzon2,20+40*7,20+40*7,120,120);
      
      imageMode(CENTER);
      
      if(millis()-temp1<1500)
      image(clarao,height/2,height/2,map(millis()-temp1,0,1500,0,1000),map(millis()-temp1,0,1500,0,1000));
      else
      image(clarao,height/2,height/2,map(millis()-temp1,1500,3000,1000,0),map(millis()-temp1,1500,3000,1000,0));
      
      imageMode(CORNER);
    }
  }
  
  void sorteia()
  {
    float aleatorio = random(0,1000);
    
    if(aleatorio>=50 && aleatorio<=52)
    {
      estado=1;
      herecomesthesun.play();
      sorteiaOculos();
      temp1=millis();
    }
  }
  
  void sorteiaOculos()
  {
    boolean pode;
    
    do {
      pode = true;
      
      int lim = parede.tamanho;
        
      x1 = floor(random(8-lim,9+lim));
      y1 = floor(random(8-lim,9+lim));
      
      if(x1>=cint.x && x1<=cint.x+2 && y1>=cint.y && y1<=cint.y+2)
      pode=false;
      
      if(x1>=7 && x1<=9 && y1>=7 && y1<=9)
      pode=false;
      
      if(x1>=Estrela.x && x1<=Estrela.x+1 && y1>=Estrela.y && y1<=Estrela.y+1)
      pode=false;
      
      if((cobraA.x == x1 && cobraA.y == y1) || (cobraV.x == x1 && cobraV.y == y1))
      pode = false;
        
      if(petrifica.x == x1 && petrifica.y == y1)
      pode = false;
        
      for(int i = 0;i < cobraA.tamanhoCorpo; i++) {
        if(cobraA.corpo[1][i] == x1 && cobraA.corpo[2][i] == y1)
        pode = false;
      }
      
      for(int i = 0;i < cobraV.tamanhoCorpo; i++) {
        if(cobraV.corpo[1][i] == x1 && cobraV.corpo[2][i] == y1)
        pode = false;
      }
      
      if(bluber.x == x1 && bluber.y == y1)
      pode=false;
      
      if(cereja.x == x1 && cereja.y == y1)
      pode=false;
      
    } while(pode == false);
    
    do {
      pode = true;
      
      int lim = parede.tamanho;
        
      x2 = floor(random(8-lim,9+lim));
      y2 = floor(random(8-lim,9+lim));
      
      if(x2>=cint.x && x2<=cint.x+2 && y2>=cint.y && y2<=cint.y+2)
      pode=false;
      
      if(x2>=7 && x2<=9 && y2>=7 && y2<=9)
      pode=false;
      
      if(x2>=Estrela.x && x2<=Estrela.x+1 && y2>=Estrela.y && y2<=Estrela.y+1)
      pode=false;
      
      if((cobraA.x == x2 && cobraA.y == y2) || (cobraV.x == x2 && cobraV.y == y2))
      pode = false;
        
      if(petrifica.x == x2 && petrifica.y == y2)
      pode = false;
        
      for(int i = 0;i < cobraA.tamanhoCorpo; i++) {
        if(cobraA.corpo[1][i] == x2 && cobraA.corpo[2][i] == y2)
        pode = false;
      }
      
      for(int i = 0;i < cobraV.tamanhoCorpo; i++) {
        if(cobraV.corpo[1][i] == x2 && cobraV.corpo[2][i] == y2)
        pode = false;
      }
      
      if(bluber.x == x2 && bluber.y == y2)
      pode=false;
      
      if(cereja.x == x2 && cereja.y == y2)
      pode=false;
      
    } while(pode == false);
  }
  
  void some(int qual)
  {
    if(qual==1)
    {
      x1=100;
      y1=100;
    }
    if(qual==2)
    {
      x2=100;
      y2=100;
    }
  }
  
}
