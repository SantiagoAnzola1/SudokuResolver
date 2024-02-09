# :mag_right: SudokuResolver :video_game:

<p align="center">
  <img align="center" height="500px" alt="SudokuResolver game" src="https://github.com/SantiagoAnzola1/SudokuResolver/assets/134959710/ac573bba-33a7-4a7c-b121-8ba8918ad89a"/>
</p>


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
  - Recibe un archivo .txt como sudoku inicial.

| Forma Archivo .txt | Al cargar |
| ------------- | ------------- |
| <img width="100%" src="https://github.com/SantiagoAnzola1/SudokuResolver/assets/134959710/caa966cc-d9d3-4e60-99d9-77d7179c41d0" /> | <img  width="100%" src="https://github.com/SantiagoAnzola1/SudokuResolver/assets/134959710/0b920094-d961-4217-8b5d-893de094c3cd" />  |

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
  2.  Abre el proyecto en tu entorno de desarrollo Java preferido.
  3.  Ejecuta el método breadthFirstSearch en la clase SudokuSolver, pasando el puzzle de Sudoku inicial como entrada.
  4.  El algoritmo explorará sistemáticamente el espacio de estados hasta encontrar una solución o agotar el espacio de búsqueda.
  5.  El puzzle de Sudoku resuelto se imprimirá como una matriz de enteros 2D.


## :clipboard: Requisitos:
  - Instalar processing. [^1]
  - Kit de Desarrollo de Java (JDK) instalado en tu sistema.

## Archivos:
  - **sudoku:** interfaz grafica del Sudoku.
  - **IntArtificial:** Contiene la implementación principal del algoritmo BFS, DFS y validacion para resolver puzzles de Sudoku.
  - **Nodo:** Define la clase Node, que representa estados del puzzle de Sudoku.
  - **Estado:** Representa el estado del puzzle de Sudoku.
  - **AccionSucesor:** Define la clase AccionSucesor, que representa acciones y estados sucesores.


<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/unity/unity-line.svg">
  <source media="(prefers-color-scheme: light)" srcset="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/unity/unity-original.svg">
  <img alt="Shows an illustrated sun in light mode and a moon with stars in dark mode." src="">
</picture>

1. Descargar capeta "JUEGO"
   ![Screenshot 2023-07-31 142846](https://github.com/SantiagoAnzola1/Silletero-Runner/assets/134959710/73fc3a84-2159-4291-9ab0-dbb30141440f)
2. Abrir el archivo ejecutable  
![Screenshot 2023-07-31 143534](https://github.com/SantiagoAnzola1/Silletero-Runner/assets/134959710/bd08afa1-2553-420d-b523-6f884e1ba380)

[^1]:https://processing.org/download
