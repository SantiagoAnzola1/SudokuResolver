 //<>//

class IntArtificial {


  //private int[][] depthFirstSearch(int[][] sudoku) {
  private Nodo depthFirstSearch(int[][] sudoku) {
    //Valida Sudoku
    if (validate(sudoku)==false) {
      print("Sudoku no valaido, valores repetidos en filas, columnas o subgrid");
      return new Nodo(new Estado(sudoku));
    }
    ArrayList<Nodo> frontera = new ArrayList<Nodo>();
    ArrayList<Estado> cerrada = new ArrayList<Estado>();
    Nodo raiz = new Nodo(new Estado(sudoku));
    frontera.add(raiz);


    while (frontera!=null) {
      // LIFO
      Nodo nAux = frontera.get(frontera.size() - 1);
      frontera.remove(frontera.size() - 1);


      if (!testObjetivo(nAux.estado.getSudo())) { // Si ese  nodo NO contiene el estado objetivo
        //Se agrega a cerrado
        cerrada.add(nAux.estado);
        ArrayList<AccionSucesor> expansion = funcionSucesor(nAux.estado.getSudo());
        if (expansion != null && expansion.size()!=0) { // Si el nodo se puede expandir (No es nodo hoja)
          for (int e = expansion.size() - 1; e >= 0; e--) { //Por cada estado de la lista de expansión
            //Se crea el nodo
            AccionSucesor aS = expansion.get(e);
            Estado sucesor = aS.sucesor;
            Nodo nuevo = new Nodo(sucesor, aS.accionX, aS.accionY, aS.accionV, nAux, nAux.costoCamino + 1, nAux.profundidad + 1);
            frontera.add(nuevo); //Se agrega a la lista frontera, pero a la izquierda
          }
        }

        // Solucion
      } else {
        return nAux;
        //return nAux.estado.getSudo();
      }
    }

    return null;
  }


  //private int[][] breadthFirstSearch(int[][] sudoku) {
  private Nodo breadthFirstSearch(int[][] sudoku) {
    //Valida Sudoku
    if (validate(sudoku)==false) {
      print("Sudoku no valaido, valores repetidos en filas, columnas o subgrid");
      return new Nodo(new Estado(sudoku));
    }

    ArrayList<Nodo> frontera = new ArrayList<Nodo>();
    ArrayList<Estado> cerrada = new ArrayList<Estado>();
    Nodo raiz = new Nodo(new Estado(sudoku));
    frontera.add(raiz);

    while (frontera!=null) {
      Nodo nAux = frontera.get(0); //FIFO
      frontera.remove(0);
      if (!testObjetivo(nAux.estado.getSudo())) { //Si ese nodo NO contiene el estado objetivo
        //Se agrega a cerrado
        cerrada.add(nAux.estado);
        ArrayList<AccionSucesor> expansion = funcionSucesor(nAux.estado.getSudo());
        if (expansion != null && expansion.size()!=0) {// Si el nodo se puede expandir (No es nodo hoja)
          for (int e=0; e<expansion.size(); e++) { //Por cada estado de la lista de expansión
            //Se crea el nodo
            AccionSucesor aS = expansion.get(e);
            Estado sucesor = aS.sucesor;

            Nodo nuevo = new Nodo(sucesor, aS.accionX, aS.accionY, aS.accionV, nAux, nAux.costoCamino + 1, nAux.profundidad + 1);
            frontera.add(nuevo);  //Se agrega a la lista frontera
          }
        }
      } else {


        return nAux;
      }
    }


    return null;
  }



  public ArrayList<AccionSucesor> funcionSucesor(int[][] sudo) {

    ArrayList<AccionSucesor> sucesores = new ArrayList<AccionSucesor>();
    for (int i=0; i<9; i++) {
      for (int j=0; j<9; j++) {
        if (sudo[i][j] == 0) {
          for (int x=1; x<10; x++) {
            int[][] A = copyList(sudo);
            A[i][j]=x;
            if (validate(A)) {
              print("\ni:", i, " j: ", j, " Valor: ", x);
              Estado nuevoEstado = new Estado(A);
              AccionSucesor nuevaAccion = new AccionSucesor(i, j, x, nuevoEstado);
              sucesores.add(nuevaAccion);
            }
          }

          return sucesores;
        }
      }
    }
    return sucesores;
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


  Boolean testObjetivo(int[][] sudo) {

    for (int i=0; i<9; i++) {
      for (int j = 0; j < 9; j++) {
        if (sudo[i][j]==0) {
          print("\nHay celdas vacias");
          return false;
        }
      }
    }
    if (validate(sudo)) {
      return true;
    } else {
      return false;
    }
  }

  Boolean validate(int sudo [][]) {

    //Filas
    for (int i = 0; i < 9; i++) {
      int[] esrRepetido = new int[9];
      for (int j = 0; j < 9; j++) {
        int val = sudo[i][j];
        if (val != 0) {
          boolean encontrado = false;
          for (int h = 0; h < esrRepetido.length; h++) {
            if (val == esrRepetido[h]) {
              return false;
            }
            if (encontrado==false && esrRepetido[h] == 0) {
              esrRepetido[h] = val;
              encontrado = true;
            }
          }
        }
      }
    }



    //Columnas

    for (int j = 0; j < 9; j++) {
      int[] esrRepetido = new int[9];
      for (int i = 0; i < 9; i++) {
        int val = sudo[i][j];
        if (val != 0) {
          boolean encontrado = false;
          for (int h = 0; h < esrRepetido.length; h++) {
            if (val == esrRepetido[h]) {
              return false;
            }
            if (!encontrado && esrRepetido[h] == 0) {
              esrRepetido[h] = val;
              encontrado = true;
            }
          }
        }
      }
    }

    //subgrid

    for (int k = 0; k < 9; k++) {
      int[] esrRepetido = new int[9];
      int fila = (k / 3) * 3;
      int col = (k % 3) * 3;
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          int val = sudo[fila + i][col + j];
          if (val != 0) {
            boolean encontrado = false;
            for (int h = 0; h < esrRepetido.length; h++) {
              if (val == esrRepetido[h]) {
                return false;
              }
              if (!encontrado && esrRepetido[h] == 0) {
                esrRepetido[h] = val;
                encontrado = true;
              }
            }
          }
        }
      }
    }


    return true;//Se valida el sudoku
  }
}//fin
