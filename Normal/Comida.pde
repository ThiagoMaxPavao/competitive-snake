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
      
      x = floor(random(0,16));
      y = floor(random(0,16));
      
      if((cobraA.x == x && cobraA.y == y) || (cobraV.x == x && cobraV.y == y))
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
      
    } while(pode == false);
  }
  
  void some()
  {
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
