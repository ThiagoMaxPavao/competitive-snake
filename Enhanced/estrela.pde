class estrela{
  
  estrela(){}
  
  int x=100;
  int y=100;
 
  void atualiza()
  {
    if(x==100 && y==100)
    this.sorteia();
    else
    {
      boolean some=true;
      
      if(x-1>=0)
      {
        if(!parede.blocos[x-1][y])
        some=false;
        if(!parede.blocos[x-1][y+1])
        some=false;
      }
      if(y-1>=0)
      {
        if(!parede.blocos[x][y-1])
        some=false;
        if(!parede.blocos[x+1][y-1])
        some=false;
      }
      if(x+2<=16)
      {
        if(!parede.blocos[x+2][y])
        some=false;
        if(!parede.blocos[x+2][y+1])
        some=false;
      }
      if(y+2<=16)
      {
        if(!parede.blocos[x][y+2])
        some=false;
        if(!parede.blocos[x+1][y+2])
        some=false;
      }
      
      if(some)
      {
        x=100;
        y=100;
      }
    }
  }
  
  void sorteia()
  {
    float aleatorio = floor(random(0,10000));
    
    if(aleatorio >= 250 && aleatorio <= 260)
    {
      boolean pode;
    
      do {
        pode = true;
        
        int lim = parede.tamanho;
        
        x = floor(random(8-lim,8+lim));
        y = floor(random(8-lim,8+lim));
        
        if(bluber.x >= x && bluber.y >= y && bluber.x <= x+1 && bluber.y <= y+1)
        pode=false;
      
        if(cereja.x >= x && cereja.y >= y && cereja.x <= x+1 && cereja.y <= y+1)
        pode=false;
        
        if((cobraA.x >= x && cobraA.x <= x+1 && cobraA.y >= y && cobraA.y <= y+1) || (cobraV.x >= x && cobraV.x <= x+1 && cobraV.y >= y && cobraV.y <=y+1))
        pode = false;
          
        for(int i = 0;i < cobraA.tamanhoCorpo; i++) {
          if(cobraA.corpo[1][i] >= x && cobraA.corpo[2][i] >= y && cobraA.corpo[1][i] <= x+1 && cobraA.corpo[2][i] <= y+1)
          pode = false;
        }
        
        for(int i = 0;i < cobraV.tamanhoCorpo; i++) {
          if(cobraV.corpo[1][i] >= x && cobraV.corpo[2][i] >= y && cobraV.corpo[1][i] <= x+1 && cobraV.corpo[2][i] <= y+1)
          pode = false;
        }
        
        if(Bezzon.estado==1 && ((Bezzon.x1>=x && Bezzon.y1>=y && Bezzon.x1<=x+1 && Bezzon.y1<=y+1) || (Bezzon.x2>=x && Bezzon.y2>=y && Bezzon.x2<=x+1 && Bezzon.y2<=y+1)))
        pode=false;
      
      } while(pode == false);
        
      if(x>=cint.x-1 && x<=cint.x+2 && y>=cint.y-1 && y<=cint.y+2)
      {
        cint.x=200;
        cint.y=200;
      }
      
      Tempcintia=millis();
    }
  }
  
  void printa()
  {
    noTint();
    image(Alanzao,20+40*x,20+40*y,80,80);
  }
}
