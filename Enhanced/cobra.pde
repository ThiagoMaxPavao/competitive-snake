class cobra {
  
  int x = 0;
  int y = 0;
  
  int vx = 0;
  int vy = 0;
  
  int xAnt;
  int yAnt;
  
  long ultVidaPega = 0;
  int vidas = 3;
  
  boolean comOculos = false;
  boolean jogabilidade = false;
  boolean viva = true;
  boolean estrelinhaMode = false;
  boolean petrificado = false;
  boolean confusa = false;
  
  int tipo;
  
  long tempqfoipetri;
  long tempqviroestrela;
  long tempopetri = 2000;
  
  color corAtuMud;
  long TempCorMud=0;
  
  int[][] corpo = new int[3][100];
  int[] raboAnt = new int[3];
  int tamanhoCorpo = 0;
  
  int[][] corpoSalva = new int[3][100];
  int[] raboAntSalva = new int[3];
  int xSalva;
  int ySalva;
  
  
  cobra(int a, int b, int c) {
    x = a;
    y = b;
    
    tipo = c;
  }
  
  void atualizar() {
    
    if(!petrificado)
    {
      if(cobraA.viva && cobraV.viva) {
        
        xAnt=x;
        yAnt=y;
    
        x += vx;
        y += vy;
      
        if(tipo == 1) {
          if(x == cereja.x && y == cereja.y) {
            
            tamanhoCorpo++;
            
            corpo[1][tamanhoCorpo] = x;
            corpo[2][tamanhoCorpo] = y;
            
            if(tamanhoCorpo == 1)
            {
              corpo[1][0] = x - vx;
              corpo[2][0] = y - vy;
            }
            
            cereja.some();
          }
          else if(x == bluber.x && y == bluber.y) {
            bluber.some();
            
            raboAnt[1] = corpo[1][0];
            raboAnt[2] = corpo[2][0];
            
            for(int i = 0;i < tamanhoCorpo; i++) {
              corpo[1][i] = corpo[1][i + 1];
              corpo[2][i] = corpo[2][i + 1];
            }
            
            corpo[1][tamanhoCorpo] = x;
            corpo[2][tamanhoCorpo] = y;
          }
          else {
            
            raboAnt[1] = corpo[1][0];
            raboAnt[2] = corpo[2][0];
            
            for(int i = 0;i < tamanhoCorpo; i++) {
              corpo[1][i] = corpo[1][i + 1];
              corpo[2][i] = corpo[2][i + 1];
            }
            
            corpo[1][tamanhoCorpo] = x;
            corpo[2][tamanhoCorpo] = y;
          }
        }
        else if(tipo == 2) {
          if(x == bluber.x && y == bluber.y) {
            
            tamanhoCorpo++;
            
            corpo[1][tamanhoCorpo] = x;
            corpo[2][tamanhoCorpo] = y;
            
            if(tamanhoCorpo == 1)
            {
              corpo[1][0] = x - vx;
              corpo[2][0] = y - vy;
            }
            
            bluber.some();
          }
          else if(x == cereja.x && y == cereja.y) {
            cereja.some();
            
            raboAnt[1] = corpo[1][0];
            raboAnt[2] = corpo[2][0];
            
            for(int i = 0;i < tamanhoCorpo; i++) {
              corpo[1][i] = corpo[1][i + 1];
              corpo[2][i] = corpo[2][i + 1];
            }
            
            corpo[1][tamanhoCorpo] = x;
            corpo[2][tamanhoCorpo] = y;
          }
          else {
            
            raboAnt[1] = corpo[1][0];
            raboAnt[2] = corpo[2][0];
            
            for(int i = 0;i < tamanhoCorpo; i++) {
              corpo[1][i] = corpo[1][i + 1];
              corpo[2][i] = corpo[2][i + 1];
            }
            
            corpo[1][tamanhoCorpo] = x;
            corpo[2][tamanhoCorpo] = y;
          }
        }
      }
      
      if(x==petrifica.x && y==petrifica.y)
      {
        if(tipo == 1)
        {
          cobraA.petrificado = true;
          cobraA.tempqfoipetri = millis();
        }
        if(tipo == 2)
        {
          cobraV.petrificado = true;
          cobraV.tempqfoipetri = millis();
        }
        
        if(sonsOn)
        PARA.play();
      }
      
    }
    
    if(millis() - tempqfoipetri > tempopetri && petrificado)
    petrificado = false;
   
    if(x>=Estrela.x && x<=Estrela.x+1 && y>=Estrela.y && y<=Estrela.y+1)
    {
      if(sonsOn)
      musica.play();
      estrelinhaMode=true;
      tempqviroestrela=millis();
      Estrela.x=100;
      Estrela.y=100;
      
      vidas=5;
    }
    
    if(estrelinhaMode)
    vidas=5;
    
    if(millis()-tempqviroestrela>3500)
    estrelinhaMode=false;
    
    if(!cobraA.estrelinhaMode && !cobraV.estrelinhaMode && partAndam)
    musica.stop();
    
    if(millis() - ultVidaPega>3750)
    {
      vidas--;
      ultVidaPega = millis();
    }
    
    
  }
  
  void vel(int a, int b) {
    vx = a;
    vy = b;
  }
  
  void printa() {
    
    colorMode(HSB);
    corAtuMud = color(map(millis(),TempCorMud,TempCorMud+750,0,255),255,255);
    if(millis()-TempCorMud>750)
    TempCorMud=millis();
    colorMode(RGB);
    
    
    if(tipo == 1) {
      
      tint(255,map(cobraV.vidas,0,5,255,0),map(cobraV.vidas,0,5,255,0));
      if(estrelinhaMode)
      tint(corAtuMud);
      if(petrificado)
      tint(255/2,255/2,255/2);
      if(!viva && vidas>0)
      tint(0);
      if(!viva && vidas == 0)
      noTint();
      
      if(tamanhoCorpo == 0) {
        
        if(x>=0 && x<=16 && y>=0 && y<=16)
        {
          if((vx == 0 && vy == 0) || (vx == 1 && vy == 0))                                                // SEM CORPO NEM RABO
          {
            if(comOculos)
            image(cobra73o,20 + 40*x, 20 + 40*y);
            else
            image(cobra73,20 + 40*x, 20 + 40*y);
          }
          else if(vx == -1 && vy == 0)
          {
            if(comOculos)
            image(cobra71o,20 + 40*x, 20 + 40*y);
            else
            image(cobra71,20 + 40*x, 20 + 40*y);
          }
          else if(vx == 0 && vy == 1)
          {
            if(comOculos)
            image(cobra72o,20 + 40*x, 20 + 40*y);
            else
            image(cobra72,20 + 40*x, 20 + 40*y);
          }
          else if(vx == 0 && vy == -1)
          {
            if(comOculos)
            image(cobra74o,20 + 40*x, 20 + 40*y);
            else
            image(cobra74,20 + 40*x, 20 + 40*y);
          }
        }
      }
      else {
                                                                                                          // CABECA
        
        
        if(x>=0 && x<=16 && y>=0 && y<=16)
        {
          if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] == x - 1 && cobraV.corpo[2][cobraV.tamanhoCorpo - 1] == y)  
          {
            if(vx == 1)
            {
              if(comOculos)
              image(cobra13o,20 + 40*x, 20 + 40*y);
              else
              image(cobra13,20 + 40*x, 20 + 40*y);
            }
            else if(vy == 1)
            {
              if(comOculos)
              image(cobra52o,20 + 40*x, 20 + 40*y);
              else
              image(cobra52,20 + 40*x, 20 + 40*y);
            }
            else if(vy == -1)
            {
              if(comOculos)
              image(cobra63o,20 + 40*x, 20 + 40*y);
              else
              image(cobra63,20 + 40*x, 20 + 40*y);
            }
          }
          if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] == x && cobraV.corpo[2][cobraV.tamanhoCorpo - 1] == y - 1)
          {
            if(vy == 1)
            {
              if(comOculos)
              image(cobra12o,20 + 40*x, 20 + 40*y);
              else
              image(cobra12,20 + 40*x, 20 + 40*y);
            }
            else if(vx == 1)
            {
              if(comOculos)
              image(cobra62o,20 + 40*x, 20 + 40*y);
              else
              image(cobra62,20 + 40*x, 20 + 40*y);
            }
            else if(vx == -1)
            {
              if(comOculos)
              image(cobra64o,20 + 40*x, 20 + 40*y);
              else
              image(cobra64,20 + 40*x, 20 + 40*y);
            }
          }
          if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] == x + 1 && cobraV.corpo[2][cobraV.tamanhoCorpo - 1] == y)
          {
            if(vx == -1)
            {
              if(comOculos)
              image(cobra11o,20 + 40*x, 20 + 40*y);
              else
              image(cobra11,20 + 40*x, 20 + 40*y);
            }
            else if(vy == 1)
            {
              if(comOculos)
              image(cobra54o,20 + 40*x, 20 + 40*y);
              else
              image(cobra54,20 + 40*x, 20 + 40*y);
            }
            else if(vy == -1)
            {
              if(comOculos)
              image(cobra61o,20 + 40*x, 20 + 40*y);
              else
              image(cobra61,20 + 40*x, 20 + 40*y);
            }
          }
          if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] == x && cobraV.corpo[2][cobraV.tamanhoCorpo - 1] == y + 1)
          {
            if(vy == -1)
            {
              if(comOculos)
              image(cobra14o,20 + 40*x, 20 + 40*y);
              else
              image(cobra14,20 + 40*x, 20 + 40*y);
            }
            else if(vx == 1)
            {
              if(comOculos)
              image(cobra53o,20 + 40*x, 20 + 40*y);
              else
              image(cobra53,20 + 40*x, 20 + 40*y);
            }
            else if(vx == -1)
            {
              if(comOculos)
              image(cobra51o,20 + 40*x, 20 + 40*y);
              else
              image(cobra51,20 + 40*x, 20 + 40*y);
            }
          }
        }
        
        if(corpo[1][0]>=0 && corpo[1][0]<=16 && corpo[2][0]>=0 && corpo[2][0]<=16)
        {
          if(corpo[1][0] == corpo[1][1]-1 && corpo[2][0] == corpo[2][1])              // RABO
          {
            if(raboAnt[1] == corpo[1][0]-1 && raboAnt[2] == corpo[2][0])
            image(cobra23,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]+1)
            image(cobra84,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]-1)
            image(cobra91,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          }
          else if(corpo[1][0] == corpo[1][1]+1 && corpo[2][0] == corpo[2][1])
          {
            if(raboAnt[1] == corpo[1][0]+1 && raboAnt[2] == corpo[2][0])
            image(cobra21,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]+1)
            image(cobra82,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]-1)
            image(cobra93,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          }
          else if(corpo[1][0] == corpo[1][1] && corpo[2][0] == corpo[2][1]-1)
          {
            if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]-1)
            image(cobra22,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0]+1 && raboAnt[2] == corpo[2][0])
            image(cobra83,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0]-1 && raboAnt[2] == corpo[2][0])
            image(cobra81,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          }
          else if(corpo[1][0] == corpo[1][1] && corpo[2][0] == corpo[2][1]+1)
          {
            if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]+1)
            image(cobra24,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0]+1 && raboAnt[2] == corpo[2][0])
            image(cobra92,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0]-1 && raboAnt[2] == corpo[2][0])
            image(cobra94,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          }
        }
        
        
        for(int i = 1;i < tamanhoCorpo; i++) {                          // CORPO
          if(corpo[1][i]>=0 && corpo[1][i]<=16 && corpo[2][i]>=0 && corpo[2][i]<=16)          
          {
            if(corpo[2][i-1] == corpo[2][i+1])
            image(cobra41,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            else if(corpo[1][i-1] == corpo[1][i+1])
            image(cobra42,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            else if(corpo[1][i] == corpo[1][i-1]+1 && corpo[2][i] == corpo[2][i-1])
            {
              if(corpo[2][i+1] == corpo[2][i]+1)
              image(cobra31,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
              else if(corpo[2][i+1] == corpo[2][i]-1)
              image(cobra34,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            }
            else if(corpo[1][i] == corpo[1][i-1]-1 && corpo[2][i] == corpo[2][i-1])
            {
              if(corpo[2][i+1] == corpo[2][i]+1)
              image(cobra32,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
              else if(corpo[2][i+1] == corpo[2][i]-1)
              image(cobra33,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            }
            else if(corpo[1][i] == corpo[1][i-1] && corpo[2][i] == corpo[2][i-1]-1)
            {
              if(corpo[1][i+1] == corpo[1][i]+1)
              image(cobra32,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
              else if(corpo[1][i+1] == corpo[1][i]-1)
              image(cobra31,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            }
            else if(corpo[1][i] == corpo[1][i-1] && corpo[2][i] == corpo[2][i-1]+1)
            {
              if(corpo[1][i+1] == corpo[1][i]+1)
              image(cobra33,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
              else if(corpo[1][i+1] == corpo[1][i]-1)
              image(cobra34,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            }
          }
        }
      }
    }
    else if(tipo == 2) {
      
      tint(map(cobraA.vidas,0,5,255,0),map(cobraA.vidas,0,5,255,0),255);
      if(estrelinhaMode)
      tint(corAtuMud);
      if(petrificado)
      tint(255/2,255/2,255/2);
      if(!viva && vidas>0)
      tint(0);
      if(!viva && vidas == 0)
      noTint();
      
      if(tamanhoCorpo == 0) {
        if(x>=0 && x<=16 && y>=0 && y<=16)
        {
          if(vx == 1 && vy == 0)                                                // SEM CORPO NEM RABO
          {
            if(comOculos)
            image(cobra73o,20 + 40*x, 20 + 40*y);
            else
            image(cobra73,20 + 40*x, 20 + 40*y);
          }
          else if((vx == 0 && vy == 0) || (vx == -1 && vy == 0))
          {
            if(comOculos)
            image(cobra71o,20 + 40*x, 20 + 40*y);
            else
            image(cobra71,20 + 40*x, 20 + 40*y);
          }
          else if(vx == 0 && vy == 1)
          {
            if(comOculos)
            image(cobra72o,20 + 40*x, 20 + 40*y);
            else
            image(cobra72,20 + 40*x, 20 + 40*y);
          }
          else if(vx == 0 && vy == -1)
          {
            if(comOculos)
            image(cobra74o,20 + 40*x, 20 + 40*y);
            else
            image(cobra74,20 + 40*x, 20 + 40*y);
          }
        }
      }
      else {
        fill(255, 0, 0);                                                                                // CABECA
        stroke(0);
        strokeWeight(1);
        
        if(x>=0 && x<=16 && y>=0 && y<=16)
        {
          if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] == x - 1 && cobraA.corpo[2][cobraA.tamanhoCorpo - 1] == y)  
          {
            if(vx == 1)
            {
              if(comOculos)
              image(cobra13o,20 + 40*x, 20 + 40*y);
              else
              image(cobra13,20 + 40*x, 20 + 40*y);
            }
            else if(vy == 1)
            {
              if(comOculos)
              image(cobra52o,20 + 40*x, 20 + 40*y);
              else
              image(cobra52,20 + 40*x, 20 + 40*y);
            }
            else if(vy == -1)
            {
              if(comOculos)
              image(cobra63o,20 + 40*x, 20 + 40*y);
              else
              image(cobra63,20 + 40*x, 20 + 40*y);
            }
          }
          if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] == x && cobraA.corpo[2][cobraA.tamanhoCorpo - 1] == y - 1)
          {
            if(vy == 1)
            {
              if(comOculos)
              image(cobra12o,20 + 40*x, 20 + 40*y);
              else
              image(cobra12,20 + 40*x, 20 + 40*y);
            }
            else if(vx == 1)
            {
              if(comOculos)
              image(cobra62o,20 + 40*x, 20 + 40*y);
              else
              image(cobra62,20 + 40*x, 20 + 40*y);
            }
            else if(vx == -1)
            {
              if(comOculos)
              image(cobra64o,20 + 40*x, 20 + 40*y);
              else
              image(cobra64,20 + 40*x, 20 + 40*y);
            }
          }
          if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] == x + 1 && cobraA.corpo[2][cobraA.tamanhoCorpo - 1] == y)
          {
            if(vx == -1)
            {
              if(comOculos)
              image(cobra11o,20 + 40*x, 20 + 40*y);
              else
              image(cobra11,20 + 40*x, 20 + 40*y);
            }
            else if(vy == 1)
            {
              if(comOculos)
              image(cobra54o,20 + 40*x, 20 + 40*y);
              else
              image(cobra54,20 + 40*x, 20 + 40*y);
            }
            else if(vy == -1)
            {
              if(comOculos)
              image(cobra61o,20 + 40*x, 20 + 40*y);
              else
              image(cobra61,20 + 40*x, 20 + 40*y);
            }
          }
          if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] == x && cobraA.corpo[2][cobraA.tamanhoCorpo - 1] == y + 1)
          {
            if(vy == -1)
            {
              if(comOculos)
              image(cobra14o,20 + 40*x, 20 + 40*y);
              else
              image(cobra14,20 + 40*x, 20 + 40*y);
            }
            else if(vx == 1)
            {
              if(comOculos)
              image(cobra53o,20 + 40*x, 20 + 40*y);
              else
              image(cobra53,20 + 40*x, 20 + 40*y);
            }
            else if(vx == -1)
            {
              if(comOculos)
              image(cobra51o,20 + 40*x, 20 + 40*y);
              else
              image(cobra51,20 + 40*x, 20 + 40*y);
            }
          }
        }
        
        if(corpo[1][0]>=0 && corpo[1][0]<=16 && corpo[2][0]>=0 && corpo[2][0]<=16)
        {
          if(corpo[1][0] == corpo[1][1]-1 && corpo[2][0] == corpo[2][1])              // RABO
          {
            if(raboAnt[1] == corpo[1][0]-1 && raboAnt[2] == corpo[2][0])
            image(cobra23,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]+1)
            image(cobra84,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]-1)
            image(cobra91,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          }
          else if(corpo[1][0] == corpo[1][1]+1 && corpo[2][0] == corpo[2][1])
          {
            if(raboAnt[1] == corpo[1][0]+1 && raboAnt[2] == corpo[2][0])
            image(cobra21,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]+1)
            image(cobra82,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]-1)
            image(cobra93,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          }
          else if(corpo[1][0] == corpo[1][1] && corpo[2][0] == corpo[2][1]-1)
          {
            if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]-1)
            image(cobra22,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0]+1 && raboAnt[2] == corpo[2][0])
            image(cobra83,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0]-1 && raboAnt[2] == corpo[2][0])
            image(cobra81,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          }
          else if(corpo[1][0] == corpo[1][1] && corpo[2][0] == corpo[2][1]+1)
          {
            if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]+1)
            image(cobra24,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0]+1 && raboAnt[2] == corpo[2][0])
            image(cobra92,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
            else if(raboAnt[1] == corpo[1][0]-1 && raboAnt[2] == corpo[2][0])
            image(cobra94,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          }
        }
        
        for(int i = 1;i < tamanhoCorpo; i++) {                          // CORPO
          if(corpo[1][i]>=0 && corpo[1][i]<=16 && corpo[2][i]>=0 && corpo[2][i]<=16)
          {
            if(corpo[2][i-1] == corpo[2][i+1])
            image(cobra41,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            else if(corpo[1][i-1] == corpo[1][i+1])
            image(cobra42,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            else if(corpo[1][i] == corpo[1][i-1]+1 && corpo[2][i] == corpo[2][i-1])
            {
              if(corpo[2][i+1] == corpo[2][i]+1)
              image(cobra31,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
              else if(corpo[2][i+1] == corpo[2][i]-1)
              image(cobra34,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            }
            else if(corpo[1][i] == corpo[1][i-1]-1 && corpo[2][i] == corpo[2][i-1])
            {
              if(corpo[2][i+1] == corpo[2][i]+1)
              image(cobra32,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
              else if(corpo[2][i+1] == corpo[2][i]-1)
              image(cobra33,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            }
            else if(corpo[1][i] == corpo[1][i-1] && corpo[2][i] == corpo[2][i-1]-1)
            {
              if(corpo[1][i+1] == corpo[1][i]+1)
              image(cobra32,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
              else if(corpo[1][i+1] == corpo[1][i]-1)
              image(cobra31,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            }
            else if(corpo[1][i] == corpo[1][i-1] && corpo[2][i] == corpo[2][i-1]+1)
            {
              if(corpo[1][i+1] == corpo[1][i]+1)
              image(cobra33,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
              else if(corpo[1][i+1] == corpo[1][i]-1)
              image(cobra34,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            }
          }
        }
      }
      noTint();
    }
  }
  
  void verfMorte() {
    
    if(x < 0 || x > 16 || y < 0 || y > 16)
    viva = false;
    
    for(int i=0;i<cobraA.tamanhoCorpo;i++) {
      if(cobraA.corpo[1][i] == x && cobraA.corpo[2][i] == y)
      {
        viva = false;
        if(tipo==1 && estrelinhaMode)
        {
          cobraA.viva=false;
        }
      }
    }
    
    for(int i=0;i<cobraV.tamanhoCorpo;i++) {
      if(cobraV.corpo[1][i] == x && cobraV.corpo[2][i] == y)
      {
        viva = false;
        if(tipo==2 && estrelinhaMode)
        {
          cobraV.viva=false;
        }
      }
    }
    
    if(cobraA.x == cobraV.x && cobraA.y == cobraV.y)
    {
      cobraA.viva = false;
      cobraV.viva = false;
    }
    
    if(x>=cint.x && x<cint.x+3 && y>=cint.y && y<cint.y+3)
    viva=false;
    
    for(int i = 0; i <= 16; i++)
    {
      for(int j = 0; j <= 16; j++)
      {
        if(x==i && y==j)
        if(parede.blocos[i][j])
        {
          viva=false;
          break;
        }
      }
    }
    
    if(cobraV.x==cobraA.xAnt && cobraV.xAnt==cobraA.x && cobraV.y==cobraA.yAnt && cobraV.yAnt==cobraA.y)
    {
      cobraA.viva=false;
      cobraV.viva=false;
    }
    
    if(cobraV.estrelinhaMode)
    cobraV.viva=true;
    
    if(cobraA.estrelinhaMode)
    cobraA.viva=true;
    
    if(vidas==0)
    viva=false;
  }
  
  
}
