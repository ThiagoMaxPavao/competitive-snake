class Cintia{
  
  int x=200;
  int y=200;
  
  Cintia(){}
  
  void atualiza()
  {
    if(x==200 && y==200)
    this.sorteia();
    
    else
    {
      if(millis()-Tempcintia>2975)
      {
        x=200;
        y=200;
      }
    }
  }
  
  void sorteia()
  {
    float aleatorio = random(0,100);
    
    if(aleatorio >= 2 && aleatorio <= 5 && millis()-Tempcintia>5500)
    {
      boolean pode;
    
      do {
        pode = true;
        
        int lim = parede.tamanho;
        
        x = floor(random(8-lim,7+lim));
        y = floor(random(8-lim,7+lim));
        
        if(Estrela.x-2 >= x && Estrela.x+1 <= x && Estrela.y+2 >= y && Estrela.y-1 <= y)
        pode = false;
        
        if((cobraA.x >= x && cobraA.x <= x+2 && cobraA.y >= y && cobraA.y <= y+2) || (cobraV.x >= x && cobraV.x <= x+2 && cobraV.y >= y && cobraV.y <=y+2))
          pode = false;
          
        for(int i = 0;i < cobraA.tamanhoCorpo; i++) {
          if(cobraA.corpo[1][i] >= x && cobraA.corpo[2][i] >= y && cobraA.corpo[1][i] <= x+2 && cobraA.corpo[2][i] <= y+2)
          pode = false;
        }
        
        for(int i = 0;i < cobraV.tamanhoCorpo; i++) {
          if(cobraV.corpo[1][i] >= x && cobraV.corpo[2][i] >= y && cobraV.corpo[1][i] <= x+2 && cobraV.corpo[2][i] <= y+2)
          pode = false;
        }
        
      } while(pode == false);
      
      if(cereja.x >= x && cereja.x <= x+2 && cereja.y >= y && cereja.y <= y+2){
        cereja.x = 256;
        cereja.y = 256;
      }
      
      if(bluber.x >= x && bluber.x <= x+2 && bluber.y >= y && bluber.y <= y+2){
        bluber.x = 256;
        bluber.y = 256;
      }
      
      if(Bezzon.estado==1 && Bezzon.x1==x && Bezzon.y1==y)
      {
        Bezzon.some(1);
      }
      
      if(Bezzon.estado==1 && Bezzon.x2==x && Bezzon.y2==y)
      {
        Bezzon.some(2);
      }
      
      Tempcintia=millis();
      
      if(sonsOn)
      cintiaSom.play();
    }
  }
  
  void printa()
  {
    noTint();
    image(cintia_imagem,20+40*x,20+40*y,120,120);
  }
  
}
