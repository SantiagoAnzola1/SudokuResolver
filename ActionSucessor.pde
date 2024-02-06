class AccionSucesor {
  int accionX;
  int accionY;
  int accionV;
  Estado sucesor;

  AccionSucesor(int x, int y, int v, Estado e) {
    accionX=x;
    accionY=y;
    accionV=v;
    sucesor=e;
  }
}
