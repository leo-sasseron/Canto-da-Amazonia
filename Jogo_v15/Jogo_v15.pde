boolean dev = false;
int stage = 11;
int tempo = 0;
int speeddefault = 3;
boolean epi = false;
boolean pause = false;
PFont font = createFont("ComicSansMS-Bold-72.vlw",72);
int logot = 0;
boolean logomais = true;
boolean logomenos = false;
//Imagens
PImage img;
PImage imgd;
PImage img1;
PImage img12;
PImage imgv33;
PImage imgv32;
PImage imgv31;
PImage img41;
PImage img42;
PImage img43;
PImage img44;
PImage img71;
PImage img72;
PImage img73;
PImage img74;
PImage img31;
PImage img32;
PImage img81;
PImage img82;
PImage img61;
PImage img62;
PImage img21;
PImage img22;
PImage imgi1d;
PImage imgi2d;
PImage imgi1e;
PImage imgi2e;
PImage imgv1000;
PImage img23;
PImage darkd;
PImage darku;
PImage jogar1;
PImage jogar2;
PImage credito;
PImage trofeu1;
PImage trofeu2;
PImage hudpont;
PImage tuto1;
PImage tuto2;
PImage tuto3;
PImage setas;
PImage gf1;
PImage gf2;
PImage gf3;
PImage gf4;
PImage vida1;
PImage vida2;
PImage vida3;
PImage vida4;
PImage record;
PImage pausei;
PImage back1;
PImage back2;
PImage credit1;
PImage credit2;
PImage logo;
PImage gear1;
PImage gear2;
//movimentação
boolean moveable;
boolean moveleft;
boolean moveright;
boolean left = false;
boolean right = false;
int movspeed = 3;
//jacaré
AudioPlayer ajacare;
boolean jleft;
boolean jright;
boolean jmleft = true;
boolean jmright = false;
boolean jacaon = true;
float xj = random(150, 500);
float yj = -400;
//goldenfish
AudioPlayer splash;
boolean gfon = true;
float xgf = random(155,500);
float ygf = -1500;
int lifesp = 0;
//piranha
AudioPlayer piranha;
boolean pdown = true;
float xp = random(155, 500);
float yp = -1500;
//piranha
boolean pdown2 = true;
float xp2 = random(155, 500);
float yp2 = -1000;
int sp = 1;
//enguia
AudioPlayer enguia;
boolean enguiaon = true;
float xe = random(155, 500);
float ye = -150;
//vitoria regia
float vrx = random(155, 600);
float vry = random(-50, -200);
boolean slow = false;
//Iara
AudioPlayer canto;
AudioPlayer hitiara;
boolean iaraon = false;
int iarax = 370;
int iaray = 100;
int iaralevel = 1;
float moviara = random(1, 10);
boolean iaraleft = false;
boolean iararight = false;
//mapa
AudioPlayer menu;
Minim minim;
AudioPlayer som;
AudioPlayer hit;
boolean first = true;
int pontuacao = 0;
int ymapa = 0;
int ymapa2 = -600;
float movx = 450;
float movy = 500;
int mapspeed = speeddefault;
boolean hardcore = false;
int h = 1;
int desbugmenu = 1;
boolean showfps = false;
int top1 = 0;
int top2 = 0;
int top3 = 0;
//flecha
boolean canshoot = true;
float flecha_x;
float flecha_y = 500;
AudioPlayer bflecha;
//vida
int vida = 3;
int ti = 0;
boolean invencivel = false;

void setup() {
  size(800, 600);
  frameRate(60);
  smooth(); 
  
  changeAppIcon( loadImage("Icon.png") );
  frame.setTitle("O Canto da Amazônia");

  import ddf.minim.*;
  minim = new Minim(this);
  canto = minim.loadFile("Iara Song_01.mp3");
  bflecha = minim.loadFile("flecha_01.mp3");
  ajacare = minim.loadFile("jacare_01.wav");
  hitiara = minim.loadFile("hit iara_01.wav");
  piranha = minim.loadFile("piranha.mp3");
  enguia = minim.loadFile("enguia.mp3");
  menu = minim.loadFile("menu loop.mp3");
  hit = minim.loadFile("indio hit.wav");
  splash = minim.loadFile("fish gold.wav");


  img = loadImage("tela inicial.png");
  imgd = loadImage("tela inicial.png");
  img1 = loadImage("rio 01.png");
  img12 = loadImage("rio 02.png");
  imgv33 = loadImage("vida_3.png");
  imgv32 = loadImage("vida_2.png");
  imgv31 = loadImage("vida_1.png");
  img41 = loadImage("Piranha1.png");
  img42 = loadImage("Piranha2.png");
  img43 = loadImage("Piranha3.png");
  img44 = loadImage("Piranha4.png");
  img71 = loadImage("Enguia1.png");
  img72 = loadImage("Enguia3.png");
  img73 = loadImage("Enguia2.png");
  img74 = loadImage("Enguia2.png");
  img31 = loadImage("jacare1_esq.png");
  img61 = loadImage("jacare1_dir.png");
  img81 = loadImage("Vitoria_Regia1.png");
  img32 = loadImage("jacare2_esq.png");
  img62 = loadImage("jacare2_dir.png");
  img82 = loadImage("Vitoria_Regia2.png");
  img21 = loadImage("Boat1.png");
  img22 = loadImage("Boat3.png");
  imgi1d = loadImage("Iara1d.png");
  imgi2d = loadImage("Iara2d.png");
  imgi1e = loadImage("Iara1e.png");
  imgi2e = loadImage("Iara2e.png");
  imgv1000 = loadImage("Flecha.png");
  img23 = loadImage("Boat2.png");
  darkd = loadImage("darkd.png");
  darku = loadImage("darku.png");
  jogar1 = loadImage("jogar1.png");
  jogar2 = loadImage("jogar2.png");
  credito = loadImage("creditos.png");
  trofeu1 = loadImage("trofeu1.png");
  trofeu2 = loadImage("trofeu2.png");
  hudpont = loadImage("hud pontos.png");
  tuto1 = loadImage("pag 1.png");
  tuto2 = loadImage("pag 2.png");
  tuto3 = loadImage("pag 3.png");
  setas = loadImage("confused.png");
  gf1 = loadImage("GoldenFish1.png");
  gf2 = loadImage("GoldenFish2.png");
  gf3 = loadImage("GoldenFish3.png");
  gf4 = loadImage("GoldenFish4.png");
  vida1 = loadImage("vida1.png");
  vida2 = loadImage("vida2.png");
  vida3 = loadImage("vida3.png");
  vida4 = loadImage("vida4.png");
  record = loadImage("recordes.png");
  pausei = loadImage("pause.png");
  back1 = loadImage("voltar.png");
  back2 = loadImage("voltar2.png");
  credit1 = loadImage("credit1.png");
  credit2 = loadImage("credit2.png");
  logo = loadImage("Logo.png");
  gear1 = loadImage("gear1.png");
  gear2 = loadImage("gear2.png");
}

void keyPressed() {

  //movimentação barco
  if (keyCode == LEFT && moveleft == true && iaraon == false) {
    left = true;
  }

  if (keyCode == RIGHT && moveright == true && iaraon == false) {
    right = true;
  }
  if (keyCode == RIGHT && moveleft == true && iaraon == true) {
    left = true;
  }

  if (keyCode == LEFT && moveright == true && iaraon == true) {
    right = true;
  }

  if (key == ' ' && canshoot == true && stage == 2 && pause == false || keyCode == UP && canshoot == true && stage == 2 && pause == false) {
    flecha_y = movy;
    flecha_x = movx + 18;
    canshoot = false;
    bflecha.play();
    bflecha.rewind();

    image(img23, movx, movy);
  }
  if (key == 'e' && dev == true) {
    epi = true;
  }
  if (key == 'f') {
      showfps = !showfps;
  }
  if (key == 'i' && dev == true) {
    iaraon = true;
    iaray = -110;
    canto.loop();
  }
  if (key == 'h' && canshoot == true && dev == true || key == 'H' && canshoot == true && dev == true) {
    hardcore = !hardcore;
  }
  if (key == 'p' || key == 'P') pause = !pause;
}
void keyReleased() {
  if (keyCode == LEFT && iaraon == false) {
    left = false;
  }

  if (keyCode == RIGHT && iaraon == false) {
    right = false;
  }
  if (keyCode == RIGHT && iaraon == true) {
    left = false;
  }

  if (keyCode == LEFT && iaraon == true) {
    right = false;
  }
  if (key == 'e') {
    epi = false;
  }
  if (key == ' ') {
    if (stage == 11) {
      stage = 1;
    }
    if (stage == 8 && tempo > 10) {
      stage = 9;
      tempo = 0;
    }
    if (stage == 9 && tempo > 10) {
      stage = 10;
      tempo = 0;
    }
    if (stage == 10 && tempo > 10) {
      stage = 1;
      tempo = 0;
    }
    if (stage == 4 && tempo > 10) {
      stage = 5;
      tempo = 0;
    }
    if (stage == 5 && tempo > 10) {
      stage = 6;
      tempo = 0;
    }
    if (stage == 6 && tempo > 10) {
      som = minim.loadFile("Musica gameplay_01.mp3");
      som.loop();
      stage = 2;
      pontuacao = 0;
      mouseX = 0;
      menu.pause();
    }
  }
}

void draw() {
  if (tempo % 4 == 0) lifesp++;
  if (stage == 1) {
    if (desbugmenu == 1) {
      menu.loop();
      desbugmenu++;
    }

    if (sp == 1 || sp == 2) {
      image(img, 0, 0);
    }
    if (sp == 3 || sp == 4) {
      image(imgd, 0, 0);
    }
    //botoes
    image(jogar1, 281, 349);
    image(credit1, 710, 500);
    image(trofeu1, 710, 400);
    image(gear1, 610, 500);

    if (mouseX>300 && mouseX<500 && mouseY>350 && mouseY<470) {
      image(jogar2, 280, 350);
      if ((mouseButton == LEFT)) {
        if (first == true) {
          stage = 4;
          tempo = 0;
          first = false;
        } else {
          som = minim.loadFile("Musica gameplay_01.mp3");
          som.loop();
          stage = 2;
          pontuacao = 0;
          tempo = 0;
          mouseX = 0;
          menu.pause();
        }
      }
    }
    if (mouseX>710 && mouseX<790 && mouseY>500 && mouseY<600) {
      image(credit2, 710, 500);
      if ((mouseButton == LEFT)) {
        stage = 7;
      }
    }
    if (mouseX>610 && mouseX<700 && mouseY>500 && mouseY<600) {
      image(gear2, 610, 500);
      if ((mouseButton == LEFT)) {
        stage = 8;
      }
    }
    if (mouseX>710 && mouseX<780 && mouseY>400 && mouseY<480) {
      image(trofeu2, 710, 400);
      if ((mouseButton == LEFT)) {
        stage = 3;
      }
    }
  }
  if (stage == 8) {
    image(tuto1,0,0);
  }
  if (stage == 9) {
    image(tuto2,0,0);
  }
  if (stage == 10) {
    image(tuto3,0,0);
  }
  if (stage == 7) {
    image(credito,0,0);
    image(back1, 52, 471);
    if (mouseX>100 && mouseX<300 && mouseY>470 && mouseY<580) {
      image(back2, 50, 470);
      if ((mouseButton == LEFT)) {
        stage = 1;
      }
    }
  }
  if (stage == 5) {
    image(tuto2,0,0);
  }
  if (stage == 4) {
    image(tuto1,0,0);
  } 

  if (stage == 6) {
    image(tuto3, 0, 0);
  }
  if (pause == false) {
    tempo++;
  }

  if (stage == 3) {
    image(record, 0, 0);
    fill(190,160,15);
    textSize(72);
    text(top1, 320, 240);
    text(top2, 320, 335);
    text(top3, 320, 430);
    image(back1, 52, 471);
    if (mouseX>100 && mouseX<300 && mouseY>470 && mouseY<580) {
      image(back2, 50, 470);
      if ((mouseButton == LEFT)) {
        stage = 1;
      }
    }
  }

  //mapa do jogo

  if (stage == 2) {
    image(img1, 0, ymapa);
    image(img12, 0, ymapa2);

    if (pause == false) {
    ymapa = ymapa + mapspeed;
    ymapa2 = ymapa2 + mapspeed;
    }

    if (ymapa>=600) {
      ymapa = -600;
    }
    if (ymapa2>=600) {
      ymapa2 = -600;
    }

    if (tempo%3==0 && pause == false) {
      pontuacao++;
    }

    //barco
    if (movx>150) {
      moveleft=true;
    } else {
      moveleft = false;
    }

    if (movx+72<650) {
      moveright = true;
    } else {
      moveright = false;
    }
  }
  //GoldenFish
  if (stage == 2 && gfon == true) {
    if (sp == 1) {
      image(gf1,xgf,ygf);
    }
    if (sp == 2) {
      image(gf2,xgf,ygf);
    }
    if (sp == 3) {
      image(gf3,xgf,ygf);
    }
    if (sp == 4) {
      image(gf4,xgf,ygf);
    }
  }
  if (ygf>=600) {
    gfon = false;
  }
  if (gfon == true && stage == 2 && pause == false) {
    ygf = ygf + mapspeed - 1;
  }
  if (gfon == false) {
    xgf = random(155,500);
    ygf = -2500;
    gfon = true;
  }

  //Piranha
  if (stage == 2 && pdown == true) {
    if (sp == 1) {
      image(img41, xp, yp);
    }
    if (sp == 2) {
      image(img42, xp, yp);
    }
    if (sp == 3) {
      image(img43, xp, yp);
    }
    if (sp == 4) {
      image(img44, xp, yp);
    }
  }
  if (yp>=600) {
    pdown = false;
  } 
  if (pdown == true && stage == 2 && pause == false) {
    yp = yp + mapspeed + 3;
  }
  if (pdown == false) {
    xp = random(155, 500);
    yp = random(-500, -1000);
    pdown = true;
  }
  if (tempo % 5 == 0 && pause == false) {
    sp++;
  }
  if (sp == 5) {
    sp = 1;
  }
  //colisao com flecha
  if (flecha_x <= xp +70 && flecha_x >= xp - 15 && flecha_y >= yp && flecha_y <= yp + 70) {
    canshoot = true;
    pdown = false;
    flecha_y = 1500;
    pontuacao += 20;
    piranha.play();
    piranha.rewind();
  }

  //Piranha2
  if (stage == 2 && pdown2 == true) {
    if (sp == 1) {
      image(img41, xp2, yp2);
    }
    if (sp == 2) {
      image(img42, xp2, yp2);
    }
    if (sp == 3) {
      image(img43, xp2, yp2);
    }
    if (sp == 4) {
      image(img44, xp2, yp2);
    }
  }
  if (yp2>=600) {
    pdown2 = false;
  } 
  if (pdown2 == true && stage == 2 && pause == false) {
    yp2 = yp2 + mapspeed + 3;
  }
  if (pdown2 == false) {
    xp2 = random(155, 500);
    yp2 = random(-500, -1001);
    pdown2 = true;
  }
  if (sp == 5) {
    sp = 1;
  }
  //colisao com flecha
  if (flecha_x <= xp2 +70 && flecha_x >= xp2 - 15 && flecha_y >= yp2 && flecha_y <= yp2 + 70) {
    canshoot = true;
    pdown2 = false;
    flecha_y = 1500;
    pontuacao += 20;
    piranha.play();
    piranha.rewind();
  }

  //enguia
  if (stage == 2) {
    if (enguiaon == true) {
      if (sp == 1) {
        image(img71, xe, ye);
      }
      if (sp == 2) {
        image(img72, xe, ye);
      }
      if (sp == 3) {
        image(img73, xe, ye);
      }
      if (sp == 4) {
        image(img74, xe, ye);
      }
      if (pause == false) {
      ye = ye + mapspeed;
      }
    }

    if (ye >= 650 || enguiaon == false) {
      ye = random (-150, -500);
      xe = random (151, 578);
      enguiaon = true;
    }
    if (flecha_x <= xe +70 && flecha_x >= xe -5  && flecha_y >= ye && flecha_y <= ye + 30) {
      canshoot = true;
      enguiaon = false;
      flecha_y = 1500;
      pontuacao += 20;
      enguia.play();
      enguia.rewind();
    }
  }

  //jacare
  if (stage == 2 && jacaon == true) {
    if (sp == 1 || sp == 2) {
      if (jmleft == true) {
        image(img31, xj, yj);
      }
      if (jmright == true) {
        image(img61, xj, yj);
      }
    }
    if (sp == 3 || sp == 4) {
      if (jmleft == true) {
        image(img32, xj, yj);
      }
      if (jmright == true) {
        image(img62, xj, yj);
      }
    }
    
    if (pause == false){
    yj = yj + mapspeed;
    }

    //movimentação bloqueada
    if (xj>150) {
      jleft = true;
    } else {
      jleft = false;
      jmleft = false;
    }
    if (xj+108<650) {
      jright = true;
    } else {
      jright = false;
      jmright = false;
    }
  }
  if (jright == true && jmleft == false && stage == 2 && pause == false) {
    xj = xj + 3;
    jmright = true;
  }
  if (jleft == true && jmright == false && stage == 2 && pause == false) {
    xj = xj - 3;
    jmleft = true;
  }

  if (jacaon == false || yj>= 600) {
    xj = random(155, 500);
    yj = -300;
    jacaon = true;
  }
  //colisao com flecha
  if (flecha_x <= xj +100 && flecha_x >= xj && flecha_y >= yj && flecha_y <= yj + 70) {
    canshoot = true;
    jacaon = false;
    flecha_y = 1500;
    pontuacao += 20;
    ajacare.rewind();
    ajacare.play();
  }

  //vitoria regia
  if (stage == 2) {
    if (sp == 1 || sp == 2 || sp == 3 ) {
      image(img81, vrx, vry);
    }
    if (sp == 4) {
      image(img82, vrx, vry);
    }
    if (vry >= 600) {
      vry = random(-50, -200);
      vrx = random(155, 600);
    }
    if (pause == false) {
    vry += mapspeed;
    }
    if (movx + 36 <= vrx + 30 && movx + 36 >= vrx && movy + 10 >= vry - 70 && movy + 10 <= vry + 10) {
      slow = true;
    } else {
      slow = false;
    }
    if (slow == true) {
      mapspeed = 2;
      left = false;
      right = false;
      if (hardcore == true) {
        mapspeed = 4;
      }
    } else {
      mapspeed = speeddefault;
      if (hardcore == true) {
        mapspeed = 12;
      }
    }
  }



  //boat
  if (stage == 2) {
    if (left && pause == false) movx -= movspeed;
    if (right && pause == false) movx += movspeed;
    if (invencivel == false ) {
      if (canshoot == true) {
        image(img21, movx, movy);
      }
      if (canshoot == false) {
        image(img22, movx, movy);
      }
    }
    if (lifesp == 1) {
      image(vida1,movx,movy);
    }
    if (lifesp == 2) {
      image(vida2,movx,movy);
    }
    if (lifesp == 3) {
      image(vida3,movx,movy);
    }
    if (lifesp == 4) {
      image(vida4,movx,movy);
    }

    //movimentação bloqueada
    if (movx>150) {
      moveleft = true;
    } else {
      moveleft = false;
    }
    if (movx+72<650) {
      moveright = true;
    } else {
      moveright = false;
    }
    //colisao com goldenfish
    if (movx + 36 <= (xgf + 36) && movx + 36 >= xgf && movy + 100 >= ygf + 36 && movy + 10 <= ygf + 36 && vida < 3) {
      gfon = false;
      vida += 1;
      lifesp = 1;
      splash.rewind();
      splash.play();
    }
    //colisão de dano
    if (movx + 36 <= (xp + 80) && movx + 36 >= xp - 10 && movy + 10 >= yp -70 && movy + 10 <= yp + 70 && invencivel == false) {
      vida -= 1;
      invencivel = true;
      mouseX = 0;
      mouseY = 0;
      hit.rewind();
      hit.play();
    }
    if (movx + 36 <= (xp2 + 80) && movx + 36 >= xp2 - 10 && movy + 10 >= yp2 -70 && movy + 10 <= yp2 + 70 && invencivel == false) {
      vida -= 1;
      invencivel = true;
      mouseX = 0;
      mouseY = 0;
      hit.rewind();
      hit.play();
    }
    if (movx + 36 <= xj +110 && movx + 36 >= xj - 10 && movy + 10 >= yj -70 && movy + 10 <= yj + 70 && invencivel == false) {
      vida -= 1;
      invencivel = true;
      mouseX = 0;
      mouseY = 0;
      hit.rewind();
      hit.play();
    }
    if (movx + 36 <= xe +80 && movx + 36 >= xe - 10 && movy + 10 >= ye -70 && movy + 10 <= ye + 30 && invencivel == false) {
      vida -= 1;
      invencivel = true;
      mouseX = 0;
      mouseY = 0;
      hit.rewind();
      hit.play();
    }
    if (invencivel == true && pause == false) {
      if (tempo % 4 == 0) {
        ti++;
      }
      if (ti % 2 == 0) {
        if (canshoot == true) {
          image(img21, movx, movy);
        }
        if (canshoot == false) {
          image(img22, movx, movy);
        }
      }

      if (ti == 20) {
        invencivel = false;
        ti = 0;
      }
    }
  }

  //iara
  if (tempo > 5000) iaralevel = 2; else iaralevel = 1;
  if (tempo > 2999 && tempo % 3000 == 0 && stage == 2) {        //mudar
    iaraon = true;
    canto.loop();
  }
  if ((tempo % 3000) - 1 == 0) {
    iaray = - 110;
  }
  if (iaraon == true && stage == 2) {
    if (iaray < 100 && tempo % 3 == 0 && pause == false) {
      iaray++;
    }
    if (tempo % 10 == 0 && pause == false) moviara = random(1, 10);
    if (moviara >1 && moviara < 2) {
      iararight = false;
      iaraleft = true;
    }
    if (moviara >2 && moviara < 3) {
      iaraleft = false;
      iararight = true;
    }
    if (moviara >3 && moviara < 4) {
      iararight = false;
      iaraleft = false;
    }

    if (iaraleft == true && pause == false) {
      iarax -= 1;
    }
    if (iararight == true && pause == false) {
      iarax += 1;
    }
    if (iarax + 71 >= 650) {
      iararight = false;
      iaraleft = true;
    }
    if (iarax <= 150) {
      iaraleft = false;
      iararight = true;
    }
    if (movx + 36 > iarax + 36) {
      if (sp == 1 || sp == 2) {
        image(imgi1d, iarax, iaray);
      }
      if (sp == 3 || sp == 4) {
        image(imgi2d, iarax, iaray);
      }
    }
    if (movx + 36 < iarax + 36) {
      if (sp == 1 || sp == 2) {
        image(imgi1e, iarax, iaray);
      }
      if (sp == 3 || sp == 4) {
        image(imgi2e, iarax, iaray);
      }
    }
    //colisao com flecha
    if (flecha_x <= iarax +42 && flecha_x >= iarax && flecha_y >= iaray && flecha_y <= iaray + 70) {
      canshoot = true;
      iaraon = false;
      flecha_y = 1500;
      pontuacao += 200;
      hitiara.play();
      hitiara.rewind();
      canto.pause();
    }
  }
  //flecha
  if (flecha_y <= 0) {
    canshoot = true;
    flecha_y = -1500;
  }
  if (canshoot == false && stage == 2) {
    image(imgv1000, flecha_x, flecha_y);
    if (pause == false){
    flecha_y = flecha_y - 7;
    }
  }

  //mov
  if (moveleft == false) {
    left = false;
  }
  if (moveright == false) {
    right = false;
  }

  //====
  if (epi == true) {
    fill(random(255), random(255), random(255), 99);
    rect(0, 0, 800, 600);
  }
  if (showfps) {
    fill(255, 255, 0);
    textSize(20);
    text(frameRate, 0, 20);
  }
  if (stage == 2 && iaralevel == 2 && iaraon == true) {    
    tint(255, 240);
    image(darkd, movx - 745, 3);
    image(darku, iarax - 745, 0);
  }
  if (iaraon && stage == 2) image(setas,350,0);
  //HUD
  tint(255, 255);
  if (stage == 2) image(hudpont, 658, 528);
  if (vida == 3 && stage == 2) {
    image(imgv33, 0, 528);
  }
  if (vida == 2 && stage == 2) {
    image(imgv32, 0, 528);
  }
  if (vida == 1 && stage == 2) {
    image(imgv31, 0, 528);
  }
  if (vida == 0) {
    vida = 3;
    stage = 1; 
    canshoot = true;
    xj = random(150, 500);
    yj = -400;
    xp = random(155, 500);
    yp = - 300;
    xe = random(155, 500);
    ye = -150;
    invencivel = false;
    ti = 0;
    flecha_y = 1000;
    tempo = 0;
    hardcore = false;
    left = false;
    right = false;
    iaraon = false;
    som.pause();
    canto.pause();
    desbugmenu = 1;
    yp = random(-500,-1000);
    yp2 = random(-500,-1001);
    if (pontuacao > top1) {
      top3 = top2;
      top2 = top1;
      top1 = pontuacao;
    }else if (pontuacao > top2) {
      top3 = top2;
      top2 = pontuacao;
    }else if (pontuacao > top3) {
      top3 = pontuacao;
    }
  }
  if (stage == 2) {
    fill(0);
    textSize(20);
    if (pontuacao < 100) text(pontuacao, 715, 574);
    if (pontuacao > 100 && pontuacao < 1000) text(pontuacao, 709, 574);
    if (pontuacao > 1000 && pontuacao < 10000) text(pontuacao, 703, 574);
    if (pontuacao > 10000 && pontuacao < 100000) text(pontuacao, 697, 574);
    if (pontuacao > 100000) text(pontuacao, 691, 574);
  }
  if (tempo%5000 == 0 && stage == 2) {
    speeddefault +=1;
    mapspeed = speeddefault;
  }
  if (pause == true) {
    tint(255,200);
    image(pausei,0,0);
    tint(255,255);
  }
  if (stage == 11) {
    background(255);
  if (logot >= 255) {
    logomais = false;
    logomenos = true;
  }
  if (logomais) {
    logot++;
  }
  if (logomenos) {
    logot--;
  }
  tint(255,logot);
  if (logot > 20) {
  image(logo,0,0,800,600);
  }
  if (logot < 0) {
    stage = 1;
  }
  }
    
}
void changeAppIcon(PImage img) {
  final PGraphics pg = createGraphics(32, 32, JAVA2D);

  pg.beginDraw();
  pg.image(img, 0, 0, 32, 32);
  pg.endDraw();

  frame.setIconImage(pg.image);
}

