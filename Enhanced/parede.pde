class Parede{
  
  Parede(){}
  
  int tamanho = 8;
  
  float Alphaproxblocos;
  
  boolean[][] blocos = new boolean[17][17];
  
  boolean[][] proxblocos = new boolean[17][17];
  
  void atualiza()
  {
    if(tamanho>4){
      
      if(millis()-TempParede>=9975)
      {
        tamanho--;
        TempParede=millis();
      }
      
      for(int i = -8; i <= 8; i++)
      {
        for(int j = -8; j <= 8; j++)
        {
          if(abs(i)>tamanho || abs(j)>tamanho)
          {
            boolean pode = true;
            
            if((cobraA.x == i+8 && cobraA.y == j+8) || (cobraV.x == i+8 && cobraV.y == j+8))
            pode = false;
                
            if(bluber.x == i+8 && bluber.y == j+8)
            bluber.some();
            
            if(cereja.x == i+8 && cereja.y == j+8)
            cereja.some();
            
            if(petrifica.x == i+8 && petrifica.y == j+8)
            petrifica.some();
            
            for(int i1 = 0;i1 < cobraA.tamanhoCorpo; i1++) {
              if(cobraA.corpo[1][i1] == i+8 && cobraA.corpo[2][i1] == j+8)
              pode = false;
            }
              
            for(int i1 = 0;i1 < cobraV.tamanhoCorpo; i1++) {
              if(cobraV.corpo[1][i1] == i+8 && cobraV.corpo[2][i1] == j+8)
              pode = false;
            }
            
            
            if(pode)
            blocos[i+8][j+8] = true;
          }
          
          if(abs(i)>tamanho-1 || abs(j)>tamanho-1)
          {
            proxblocos[i+8][j+8] = true;
          }
        }
      }
    }
  }
  
  void calcAlpha()
  {
    Alphaproxblocos = map((millis()-TempParede),0,9975,0,255);
  }
  
  void printa()
  {
    for(int x=0; x < 17; x++)
    {
      for(int y=0; y < 17; y++)
      {
        if(blocos[x][y])
        image(bloco,20 + 40*x, 20 + 40*y,bloco.width*40/bloco.height,40);
        
        if(tamanho>4)
        {
          tint(255,255,255,Alphaproxblocos);
          if(proxblocos[x][y])
          image(bloco,20 + 40*x, 20 + 40*y,bloco.width*40/bloco.height,40);
          noTint();
        }
      }
    }
  }
}
