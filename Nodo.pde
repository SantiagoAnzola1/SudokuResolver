class Nodo {
  Estado estado;
  Nodo padre;
  int accionX;
  int accionY;
  int accionV;
  int costoCamino;
  int g;
  int h;
  int profundidad;

  //Nodo() {
  //  estado=new Estado(int sudo [][]);
  //  padre=null;
  //  costoCamino=0;
  //  profundidad=0;
  //}
  Nodo(Estado ini) {
    estado= ini;
    padre=null;
    costoCamino=0;
    profundidad=0;
  }
  Nodo(Estado ini, int x, int y, int v, Nodo p, int c, int prof) {
    estado= ini;
    accionX=x;
    accionY=y;
    accionV=v;
    padre=p;
    costoCamino=c;
    profundidad=prof;
  }
  //Nodo(Estado ini, char a, Nodo p, int c, int heuristica, int prof) {
  //  estado=ini;
  //  accion=a;
  //  padre=p;
  //  h=heuristica;
  //  costoCamino=c;
  //  g=h+c;
  //  profundidad=prof;
  //}
}
