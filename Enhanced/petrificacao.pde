class Petrif{
  
  Petrif(){}
  
  int x = 100;
  int y = 100;
  
  void atualiza()
  {
    if(x==100 && y==100 && cobraA.petrificado == false && cobraV.petrificado == false )
    {
      float aleatorio = random(0,100);
    
      if(aleatorio>=2 && aleatorio<=3)
      
      this.sorteia();
    }
    else
    {
      if(cobraA.petrificado || cobraV.petrificado)
      {
        some();
      } 
    }
  }
  
  void sorteia()
  {
    boolean pode;
    
    do {
      pode = true;
      
      int lim = parede.tamanho;
      
      x = floor(random(8-lim,8+lim));
      y = floor(random(8-lim,8+lim));
      
      if((cobraA.x == x && cobraA.y == y) || (cobraV.x == x && cobraV.y == y))
        pode = false;
        
      if((bluber.x == x && bluber.y == y) || (cereja.x == x && cereja.y == y))
        pode = false;
        
      for(int i = 0;i < cobraA.tamanhoCorpo; i++) {
        if(cobraA.corpo[1][i] == x && cobraA.corpo[2][i] == y)
        pode = false;
      }
      
      for(int i = 0;i < cobraV.tamanhoCorpo; i++) {
        if(cobraV.corpo[1][i] == x && cobraV.corpo[2][i] == y)
        pode = false;
      }
      
      if(Bezzon.estado==1 && ((Bezzon.x1==x && Bezzon.y1==y) || (Bezzon.x2==x && Bezzon.y2==y)))
      pode=false;
      
    } while(pode == false);
  }
  
  void printa()
  {
    image(varinha,20 + 40*x, 20 + 40*y,varinha.width*40/varinha.height,40);
  }
  
  void some()
  {
    x=100;
    y=100;
  }
}
