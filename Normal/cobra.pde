class cobra {
  
  int x = 0;
  int y = 0;
  
  int vx = 0;
  int vy = 0;
  
  boolean viva = true;
  
  int tipo;
  
  int[][] corpo = new int[3][100];
  int[] raboAnt = new int[3];
  int tamanhoCorpo = 0;
  
  cobra(int a, int b, int c) {
    x = a;
    y = b;
    
    tipo = c;
  }
  
  void atualizar() {
    
    x += vx;
    y += vy;
    
    this.verfMorte();
    
    if(cobraA.viva && cobraV.viva) {
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
    else {
      x -= vx;
      y -= vy;
    }
  }
  
  void vel(int a, int b) {
    vx = a;
    vy = b;
  }
  
  void printa() {
    if(viva)
    noTint();
    else
    tint(0);
    
    if(tipo == 1) {
      if(tamanhoCorpo == 0) {
        if((vx == 0 && vy == 0) || (vx == 1 && vy == 0))                                                // SEM CORPO NEM RABO
        image(cobraV73,20 + 40*x, 20 + 40*y);
        else if(vx == -1 && vy == 0)
        image(cobraV71,20 + 40*x, 20 + 40*y);
        else if(vx == 0 && vy == 1)
        image(cobraV72,20 + 40*x, 20 + 40*y);
        else if(vx == 0 && vy == -1)
        image(cobraV74,20 + 40*x, 20 + 40*y);
      }
      else {
        fill(255, 0, 0);                                                                                // CABECA
        stroke(0);
        strokeWeight(1);
        
        if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] == x - 1 && cobraV.corpo[2][cobraV.tamanhoCorpo - 1] == y)  
        {
          if(vx == 1)
          image(cobraV13,20 + 40*x, 20 + 40*y);
          else if(vy == 1)
          image(cobraV52,20 + 40*x, 20 + 40*y);
          else if(vy == -1)
          image(cobraV63,20 + 40*x, 20 + 40*y);
        }
        if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] == x && cobraV.corpo[2][cobraV.tamanhoCorpo - 1] == y - 1)
        {
          if(vy == 1)
          image(cobraV12,20 + 40*x, 20 + 40*y);
          else if(vx == 1)
          image(cobraV62,20 + 40*x, 20 + 40*y);
          else if(vx == -1)
          image(cobraV64,20 + 40*x, 20 + 40*y);
        }
        if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] == x + 1 && cobraV.corpo[2][cobraV.tamanhoCorpo - 1] == y)
        {
          if(vx == -1)
          image(cobraV11,20 + 40*x, 20 + 40*y);
          else if(vy == 1)
          image(cobraV54,20 + 40*x, 20 + 40*y);
          else if(vy == -1)
          image(cobraV61,20 + 40*x, 20 + 40*y);
        }
        if(cobraV.corpo[1][cobraV.tamanhoCorpo - 1] == x && cobraV.corpo[2][cobraV.tamanhoCorpo - 1] == y + 1)
        {
          if(vy == -1)
          image(cobraV14,20 + 40*x, 20 + 40*y);
          else if(vx == 1)
          image(cobraV53,20 + 40*x, 20 + 40*y);
          else if(vx == -1)
          image(cobraV51,20 + 40*x, 20 + 40*y);
        }
        
        if(corpo[1][0] == corpo[1][1]-1 && corpo[2][0] == corpo[2][1])              // RABO
        {
          if(raboAnt[1] == corpo[1][0]-1 && raboAnt[2] == corpo[2][0])
          image(cobraV23,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]+1)
          image(cobraV84,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]-1)
          image(cobraV91,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
        }
        else if(corpo[1][0] == corpo[1][1]+1 && corpo[2][0] == corpo[2][1])
        {
          if(raboAnt[1] == corpo[1][0]+1 && raboAnt[2] == corpo[2][0])
          image(cobraV21,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]+1)
          image(cobraV82,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]-1)
          image(cobraV93,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
        }
        else if(corpo[1][0] == corpo[1][1] && corpo[2][0] == corpo[2][1]-1)
        {
          if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]-1)
          image(cobraV22,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0]+1 && raboAnt[2] == corpo[2][0])
          image(cobraV83,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0]-1 && raboAnt[2] == corpo[2][0])
          image(cobraV81,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
        }
        else if(corpo[1][0] == corpo[1][1] && corpo[2][0] == corpo[2][1]+1)
        {
          if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]+1)
          image(cobraV24,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0]+1 && raboAnt[2] == corpo[2][0])
          image(cobraV92,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0]-1 && raboAnt[2] == corpo[2][0])
          image(cobraV94,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
        }
        
        for(int i = 1;i < tamanhoCorpo; i++) {                          // CORPO
          if(corpo[2][i-1] == corpo[2][i+1])
          image(cobraV41,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
          else if(corpo[1][i-1] == corpo[1][i+1])
          image(cobraV42,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
          else if(corpo[1][i] == corpo[1][i-1]+1 && corpo[2][i] == corpo[2][i-1])
          {
            if(corpo[2][i+1] == corpo[2][i]+1)
            image(cobraV31,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            else if(corpo[2][i+1] == corpo[2][i]-1)
            image(cobraV34,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
          }
          else if(corpo[1][i] == corpo[1][i-1]-1 && corpo[2][i] == corpo[2][i-1])
          {
            if(corpo[2][i+1] == corpo[2][i]+1)
            image(cobraV32,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            else if(corpo[2][i+1] == corpo[2][i]-1)
            image(cobraV33,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
          }
          else if(corpo[1][i] == corpo[1][i-1] && corpo[2][i] == corpo[2][i-1]-1)
          {
            if(corpo[1][i+1] == corpo[1][i]+1)
            image(cobraV32,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            else if(corpo[1][i+1] == corpo[1][i]-1)
            image(cobraV31,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
          }
          else if(corpo[1][i] == corpo[1][i-1] && corpo[2][i] == corpo[2][i-1]+1)
          {
            if(corpo[1][i+1] == corpo[1][i]+1)
            image(cobraV33,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            else if(corpo[1][i+1] == corpo[1][i]-1)
            image(cobraV34,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
          }
        }
      }
    }
    else if(tipo == 2) {
      if(tamanhoCorpo == 0) {
        if(vx == 1 && vy == 0)                                                   // SEM CORPO NEM RABO
        image(cobraA73,20 + 40*x, 20 + 40*y);
        else if((vx == 0 && vy == 0) ||(vx == -1 && vy == 0))
        image(cobraA71,20 + 40*x, 20 + 40*y);
        else if(vx == 0 && vy == 1)
        image(cobraA72,20 + 40*x, 20 + 40*y);
        else if(vx == 0 && vy == -1)
        image(cobraA74,20 + 40*x, 20 + 40*y);
      }
      else {
        fill(255, 0, 0);                                                                                // CABECA
        stroke(0);
        strokeWeight(1);
        
        if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] == x - 1 && cobraA.corpo[2][cobraA.tamanhoCorpo - 1] == y)  
        {
          if(vx == 1)
          image(cobraA13,20 + 40*x, 20 + 40*y);
          else if(vy == 1)
          image(cobraA52,20 + 40*x, 20 + 40*y);
          else if(vy == -1)
          image(cobraA63,20 + 40*x, 20 + 40*y);
        }
        if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] == x && cobraA.corpo[2][cobraA.tamanhoCorpo - 1] == y - 1)
        {
          if(vy == 1)
          image(cobraA12,20 + 40*x, 20 + 40*y);
          else if(vx == 1)
          image(cobraA62,20 + 40*x, 20 + 40*y);
          else if(vx == -1)
          image(cobraA64,20 + 40*x, 20 + 40*y);
        }
        if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] == x + 1 && cobraA.corpo[2][cobraA.tamanhoCorpo - 1] == y)
        {
          if(vx == -1)
          image(cobraA11,20 + 40*x, 20 + 40*y);
          else if(vy == 1)
          image(cobraA54,20 + 40*x, 20 + 40*y);
          else if(vy == -1)
          image(cobraA61,20 + 40*x, 20 + 40*y);
        }
        if(cobraA.corpo[1][cobraA.tamanhoCorpo - 1] == x && cobraA.corpo[2][cobraA.tamanhoCorpo - 1] == y + 1)
        {
          if(vy == -1)
          image(cobraA14,20 + 40*x, 20 + 40*y);
          else if(vx == 1)
          image(cobraA53,20 + 40*x, 20 + 40*y);
          else if(vx == -1)
          image(cobraA51,20 + 40*x, 20 + 40*y);
        }
        
        if(corpo[1][0] == corpo[1][1]-1 && corpo[2][0] == corpo[2][1])              // RABO
        {
          if(raboAnt[1] == corpo[1][0]-1 && raboAnt[2] == corpo[2][0])
          image(cobraA23,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]+1)
          image(cobraA84,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]-1)
          image(cobraA91,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
        }
        else if(corpo[1][0] == corpo[1][1]+1 && corpo[2][0] == corpo[2][1])
        {
          if(raboAnt[1] == corpo[1][0]+1 && raboAnt[2] == corpo[2][0])
          image(cobraA21,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]+1)
          image(cobraA82,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]-1)
          image(cobraA93,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
        }
        else if(corpo[1][0] == corpo[1][1] && corpo[2][0] == corpo[2][1]-1)
        {
          if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]-1)
          image(cobraA22,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0]+1 && raboAnt[2] == corpo[2][0])
          image(cobraA83,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0]-1 && raboAnt[2] == corpo[2][0])
          image(cobraA81,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
        }
        else if(corpo[1][0] == corpo[1][1] && corpo[2][0] == corpo[2][1]+1)
        {
          if(raboAnt[1] == corpo[1][0] && raboAnt[2] == corpo[2][0]+1)
          image(cobraA24,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0]+1 && raboAnt[2] == corpo[2][0])
          image(cobraA92,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
          else if(raboAnt[1] == corpo[1][0]-1 && raboAnt[2] == corpo[2][0])
          image(cobraA94,20 + 40*corpo[1][0], 20 + 40*corpo[2][0]);
        }
        
        for(int i = 1;i < tamanhoCorpo; i++) {                          // CORPO
          if(corpo[2][i-1] == corpo[2][i+1])
          image(cobraA41,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
          else if(corpo[1][i-1] == corpo[1][i+1])
          image(cobraA42,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
          else if(corpo[1][i] == corpo[1][i-1]+1 && corpo[2][i] == corpo[2][i-1])
          {
            if(corpo[2][i+1] == corpo[2][i]+1)
            image(cobraA31,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            else if(corpo[2][i+1] == corpo[2][i]-1)
            image(cobraA34,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
          }
          else if(corpo[1][i] == corpo[1][i-1]-1 && corpo[2][i] == corpo[2][i-1])
          {
            if(corpo[2][i+1] == corpo[2][i]+1)
            image(cobraA32,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            else if(corpo[2][i+1] == corpo[2][i]-1)
            image(cobraA33,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
          }
          else if(corpo[1][i] == corpo[1][i-1] && corpo[2][i] == corpo[2][i-1]-1)
          {
            if(corpo[1][i+1] == corpo[1][i]+1)
            image(cobraA32,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            else if(corpo[1][i+1] == corpo[1][i]-1)
            image(cobraA31,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
          }
          else if(corpo[1][i] == corpo[1][i-1] && corpo[2][i] == corpo[2][i-1]+1)
          {
            if(corpo[1][i+1] == corpo[1][i]+1)
            image(cobraA33,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
            else if(corpo[1][i+1] == corpo[1][i]-1)
            image(cobraA34,20 + 40*corpo[1][i], 20 + 40*corpo[2][i]);
          }
        }
      }
    }
  }
  
  void verfMorte() {
    if(x < 0 || x > 16 || y < 0 || y > 16)
    viva = false;
    
    for(int i=0;i<cobraA.tamanhoCorpo;i++) {
      if(cobraA.corpo[1][i] == x && cobraA.corpo[2][i] == y)
      viva = false;
    }
    
    for(int i=0;i<cobraV.tamanhoCorpo;i++) {
      if(cobraV.corpo[1][i] == x && cobraV.corpo[2][i] == y)
      viva = false;
    }
    
    if(cobraA.x == cobraV.x && cobraA.y == cobraV.y)
    {
      cobraA.viva = false;
      cobraV.viva = false;
    }
  }
}
