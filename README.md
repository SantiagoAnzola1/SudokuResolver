# :mag_right: SudokuResolver :video_game:

<p align="center">
  <img align="center" height="500px" alt="SudokuResolver game" src="https://github.com/SantiagoAnzola1/SudokuResolver/assets/134959710/ac573bba-33a7-4a7c-b121-8ba8918ad89a"/>
</p>


<p align="center">
  | <a href=READMEEN.md>English</a> | 
    <span>Español</span> |
</p>
<br>


## :hammer_and_wrench: Lenguajes y herramientas:
<p align="center"> 
  <a href="https://www.java.com" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg" alt="java" width="40" height="40"/> </a>
  <a href="https://processing.org/" target="_blank" rel="noreferrer"> <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/processing/processing-original.svg" alt="Processing" width="40" height="40"/> </a> 
</p>


## :page_with_curl: Descripción:
Este repositorio contiene una implementación del algoritmo de Búsqueda en Amplitud (BFS) y Búsqueda en Anchura (DFS) y para resolver puzzles de Sudoku. El código está escrito en Proccessing y Java y proporciona un enfoque directo para resolver puzzles de Sudoku.

## Características:
  - Implementación del algoritmo de Búsqueda en Amplitud (BFS).
  - Implementación del algoritmo de Búsqueda en Profundidad (DFS).
  - Resuelve puzzles de Sudoku de manera eficiente explorando sistemáticamente todos los estados posibles.
  - Utiliza una estructura de datos de cola para administrar la frontera de nodos durante la búsqueda.
  - Implementa una clase Nodo para representar estados del puzzle de Sudoku y seguir la ruta de la solución.
  - Proporciona funciones personalizables para generar estados sucesores y probar el estado objetivo.
  - Recibe un archivo .txt como sudoku inicial, con 9 filas de valores entre 1 a 9 y las casillas vacias representadas con 0.

| Forma Archivo .txt | Al cargar |
| ------------- | ------------- |
| <p align="center"><img width="50%" src="https://github.com/SantiagoAnzola1/SudokuResolver/assets/134959710/27f18dab-4733-460a-9fbf-f006eef7b495" /></p> | <p align="center"><img  width="50%" src="https://github.com/SantiagoAnzola1/SudokuResolver/assets/134959710/0b920094-d961-4217-8b5d-893de094c3cd" /></p>  |

## 💻 ¿Cómo funciona?
  - <strong>Inserción de Números: </strong> Selecciona la selda y presiona teclas numéricas (1-9) para insertar números en las celdas.
  - <strong>:arrow_left:: </strong> Usa la tecla de retroceso (Backspace) para borrar todos los números del tablero.
  - <strong>Suprimir: </strong> Presiona la tecla Suprimir para eliminar el número de la celda seleccionada.
  - <strong>P: </strong> Imprime en consola el Sudoku actual en la consola al presionar 'P' o 'p'.
  - <strong>V: </strong> Verifica si el Sudoku actual es válido al presionar 'V' o 'v'.
  - <strong>C: </strong> Carga un Sudoku predefinido desde el archivo 'sud1.txt' al presionar 'C' o 'c'.
  - <strong>D: </strong> Intenta resolver el Sudoku actual utilizando la Búsqueda en Profundidad al presionar 'D' o 'd'. Muestra la solución, costo y profundidad en la consola.
  - <strong>B: </strong> Intenta resolver el Sudoku actual utilizando la Búsqueda en Amplitud al presionar 'B' o 'b'. Muestra la solución, costo y profundidad en la consola.


## :game_die: Pruébalo:
  1.  Clona el repositorio en tu máquina local.
  2.  Abre el proyecto en tu entorno de desarrollo Processing.
  3.  Ejecuta la clase _sudoku.pde_, la cual contiene la interfaz gráfica del modelo.
  4.  Llama los métodos de busqueda, posterior a cargar el puzzle de Sudoku inicial como entrada.
  5.  El algoritmo explorará sistemáticamente el espacio de estados hasta encontrar una solución o agotar el espacio de búsqueda.
  6.  El puzzle de Sudoku resuelto se imprimirá como una matriz de enteros 2D.


## :clipboard: Requisitos:
  - Instalar processing. [^1]
  - Kit de Desarrollo de Java (JDK) instalado en tu sistema.

## 📁 Archivos:
  - **sudoku.pde:** interfaz grafica del Sudoku.
  - **IntArtificial.pde:** Contiene la implementación principal del algoritmo BFS, DFS y validacion para resolver puzzles de Sudoku.
  - **Nodo.pde:** Define la clase Node, que representa estados del puzzle de Sudoku.
  - **Estado.pde:** Representa el estado del puzzle de Sudoku.
  - **AccionSucesor.pde:** Define la clase AccionSucesor, que representa acciones y estados sucesores.
  - **sud.txt / sud1.txt:** Contienen el estado inicial del sudoku.


