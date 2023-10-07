class comida {

  int x;
  int y;
  
  int tipo;
  
  comida(int a){
    tipo = a;
  }
  
  void pegarLugar() {
    
    boolean pode;
    
    do {
      pode = true;
      
      int lim = parede.tamanho;
        
      x = floor(random(8-lim,9+lim));
      y = floor(random(8-lim,9+lim));
      
      if(x>=cint.x && x<=cint.x+2 && y>=cint.y && y<=cint.y+2)
      pode=false;
      
      if(x>=Estrela.x && x<=Estrela.x+1 && y>=Estrela.y && y<=Estrela.y+1)
      pode=false;
      
      if((cobraA.x == x && cobraA.y == y) || (cobraV.x == x && cobraV.y == y))
      pode = false;
        
      if(petrifica.x == x && petrifica.y == y)
      pode = false;
        
      for(int i = 0;i < cobraA.tamanhoCorpo; i++) {
        if(cobraA.corpo[1][i] == x && cobraA.corpo[2][i] == y)
        pode = false;
      }
      
      for(int i = 0;i < cobraV.tamanhoCorpo; i++) {
        if(cobraV.corpo[1][i] == x && cobraV.corpo[2][i] == y)
        pode = false;
      }
      
      if(tipo == 1) {
        if(bluber.x == x && bluber.y == y)
        pode=false;
      }
      
      if(tipo == 2) {
        if(cereja.x == x && cereja.y == y)
        pode=false;
      }
      
      if(Bezzon.estado==1 && ((Bezzon.x1==x && Bezzon.y1==y) || (Bezzon.x2==x && Bezzon.y2==y)))
      pode=false;
      
    } while(pode == false);
  }
  
  void some()
  {
    if(tipo == 2 && bluber.x == cobraA.x && bluber.y == cobraA.y)
    {
      cobraA.ultVidaPega = millis();
      cobraA.vidas++;
    }
    
    if(tipo == 1 && cereja.x == cobraV.x && cereja.y == cobraV.y)
    {
      cobraV .ultVidaPega = millis();
      cobraV.vidas++;
    }
    
    x = 256;
    y = 256;
  }
  
  void printa() {
    noTint();
    if(tipo == 1) {
      image(cereja_imagem,25 + 40*x, 22 + 40*y,cereja_imagem.width*35/cereja_imagem.height,35);
    }
    if(tipo == 2) {
      image(bluber_imagem,23 + 40*x, 22 + 40*y,bluber_imagem.width*35/bluber_imagem.height,35);
    }
  }
}
