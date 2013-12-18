color clr[] = {color(41, 128, 185), color(236, 240, 241)};
color fill_clr = clr[0];
color strk_clr = clr[0];
int len = 10;
float fill_amt, strk_amt;
float r = 0.2; // random(r);
void setup() {
  size(600,400);
  noLoop();
}

void draw() {
  for(int i=0; i<=height/len; i++) {
    for(int j=0; j<=width/len; j++) {
      fill(fill_clr);
      stroke(strk_clr);
      rect(len*j, len*i, len, len);
      fill_amt = (float)i/(height/len)+random(r);
      if(fill_amt > 1.0) fill_amt = 1.0;
      strk_amt = (float)i/(height/len)+random(r);
      if(strk_amt > 1.0) strk_amt = 1.0;
      fill_clr = lerpColor(clr[0], clr[1], fill_amt);
      strk_clr = lerpColor(clr[0], clr[1], strk_amt);

    }
  }
}

