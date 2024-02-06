int[][] grid = new int[9][9];

//Celda selccionada
int pI=-3;
int pJ=-3;
int[][] sol;
IntArtificial solver = new IntArtificial();
boolean reload=false;
long reloadStartTime;
int wait = 500;

void setup() {
  size(541, 541);
  textSize(32);
}

void draw() {
  background(255);
  dibujaCuadricula();
}

void dibujaCuadricula() {
  for (int i = 0; i < 9; i++) {
    for (int j = 0; j < 9; j++) {

      if (i==pI && j==pJ) {
        fill(79, 145, 158);
      } else if (i==pI || j==pJ) {//Fila y columna seleccionada
        fill(255, 255, 0);
      } else if ((i >= 3 && i <= 5 && !(j >= 3 && j <= 5)) || (j >= 3 && j <= 5 && !(i >= 3 && i <= 5))) {//Cuadros naranjas
        fill(255, 165, 0);
      } else if (int(i / 3) == int(pI / 3) && int(j / 3) == int(pJ / 3)) {//Subgrid selccionada
        fill(255, 255, 0);
      } else {
        fill(255);
      }
      //Se dibuja la celda
      rect(i*60, j*60, 60, 60);

      if (grid[i][j] != 0) {
        fill(0);
        textAlign(CENTER, CENTER); // se centra el numero en la celda
        text(grid[i][j], i*60+30, j*60+30); // se escriba el valor presionado en la celda actual
      } else {
        fill(255); // Blanco para las demas celdas
      }
    }
  }
}

void mousePressed() {
  int i = mouseX / 60;
  int j = mouseY / 60;
  println("\nx: ", i, " y: ", j);
  println("Mx: ", mouseX, " My: ", mouseY);

  if (i >= 0 && i < 9 && j >= 0 && j < 9) {//Se limita dentro de la cuadricula del Sudoku

    //Celda actual
    pI=i;
    pJ=j;
  }
}

void keyPressed() {
  int i = mouseX / 60;
  int j = mouseY / 60;
  if (i >= 0 && i < 9 && j >= 0 && j < 9) {

    if (key >= '1' && key <= '9') {
      fill(200);
      grid[i][j] = key -'0';
    }
    if (keyCode==8) {//Boton eliminar <--
      for (int m = 0; m < 9; m++) {
        for (int n = 0; n < 9; n++) {
          grid[m][n] = 0;
        }
      }
    }
    if (keyCode==127) {//Boton eliminar celda actual supr
      grid[pI][pJ] = 0;
    }
    if (key=='p'||key=='P') {//Boton imprimir
      imprimirSudoku();
    }
    if (key=='v'||key=='V') {//Validar
      if (solver.testObjetivo(grid)) {
        print("\n--------------------------------\n");
        print("|SUDOKU RESULTO CORRECTAMENTE!!|");
        print("\n--------------------------------\n");
      } else {
        print("\n****No se ha solucionado el Sudoku correctamente****");
      }
    }
    if (key=='c' || key=='C') {
      cargarLaberinto("sud1.txt");
      imprimirSudoku();
    }
    if (key=='d' || key=='D') {//Solucionar
      sol = solver.depthFirstSearch(grid).estado.getSudo();
      int costo=solver.depthFirstSearch(grid).costoCamino;
      int prof=solver.depthFirstSearch(grid).profundidad;
      if (sol!=null) {

        grid=copyList(sol);
        imprimirSudoku(costo, prof);
        //println("\nCosoto Camino= ", costo);
        //println("Profundidad= ", prof);
      } else {
        println("Sin solucion");
      }
    }
    if (key=='b'||key=='B') {//Solucionar
      sol = solver.breadthFirstSearch(grid).estado.getSudo();
      int costo=solver.breadthFirstSearch(grid).costoCamino;
      int prof=solver.breadthFirstSearch(grid).profundidad;
      if (sol!=null) {

        grid=copyList(sol);
        imprimirSudoku(costo, prof);
      } else {
        println("Sin solucion");
      }
    }
    //Celda actual
    //pI=i;
    //pJ=j;
  }
}
int[][] copyList(int[][] lista) {
  int[][] copia = new int[9][9];
  for (int i = 0; i < 9; i++) {
    for (int j = 0; j < 9; j++) {
      copia[i][j] = lista[i][j];
    }
  }
  return copia;
}
void imprimirSudoku() {
  print("\n--------------------------------------\n");
  print("----------------Sudoku----------------\n");
  print("--------------------------------------\n");
  for (int m = 0; m < 9; m++) {
    print("|");
    for (int n = 0; n < 9; n++) {
      print(grid[n][m], ", ");
      if (n==8) {
        print("|");
        print("\n");
      }
    }
  }

  print("--------------------------------------");
}

void imprimirSudoku(int c, int p) {
  print("\n--------------------------------------\n");
  print("----------------Sudoku----------------\n");
  print("--------------------------------------\n");
  for (int m = 0; m < 9; m++) {
    print("|");
    for (int n = 0; n < 9; n++) {
      print(grid[n][m], ", ");
      if (n==8) {
        print("|");
        print("\n");
      }
    }
  }
  print("--------------------------------------");
  println("\n| *  Costo Camino = ", c, "            |");
  println("| *  Profundidad = ", p, "              |");
  print("--------------------------------------");
}



public boolean cargarLaberinto(String f) {
  BufferedReader reader;
  StringBuilder reading = new StringBuilder();
  String line;
  reader = createReader(f);
  try {
    while ((line = reader.readLine()) != null) {
      reading.append(line);
      reading.append('\n');
    }
  }
  catch (IOException e) {
    e.printStackTrace();
    line = null;
    return false;
  }

  String readLines = reading.toString();
  String[] rows = split(readLines, '\n');
  if (rows != null && rows.length > 1) {
    //laberinto = new int[rows.length-1][rows[0].length()];
    for (int r = 0; r < rows.length-1; r++) {
      for (int c = 0; c < rows[r].length(); c++) {
        char ch = rows[r].charAt(c);
        if (ch == '0') {
          grid[c][r] = 0;
        } else {
          grid[c][r] = ch - '0';
        }
      }
    }
    return true;
  } else {
    return false;
  }
}
