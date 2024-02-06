class  Estado {
  int[][] sudo;

  public Estado(int[][] sudo) {
    this.sudo = sudo;
  }
  public int[][] getSudo() {
    return sudo;
  }

  public int getValue(int fila, int col) {
    return sudo[fila][col];
  }

  public void setValue(int fila, int col, int value) {
    sudo[fila][col] = value;
  }
}
