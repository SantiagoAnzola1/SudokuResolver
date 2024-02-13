# :mag_right: SudokuResolver :video_game:

<p align="center">
  <img align="center" height="500px" alt="SudokuResolver game" src="https://github.com/SantiagoAnzola1/SudokuResolver/assets/134959710/ac573bba-33a7-4a7c-b121-8ba8918ad89a"/>
</p>


<p align="center">
  | <span>English</span> | 
    <a href=README.md>Español</a> |
</p>
<br>


## :hammer_and_wrench: Languages and Tools:
<p align="center"> 
  <a href="https://www.java.com" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg" alt="java" width="40" height="40"/> </a>
  <a href="https://processing.org/" target="_blank" rel="noreferrer"> <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/processing/processing-original.svg" alt="Processing" width="40" height="40"/> </a> 
</p>


## :page_with_curl: Description:
This repository contains an implementation of the Breadth-First Search (BFS) algorithm and Depth-First Search (DFS) algorithm to solve Sudoku puzzles. The code is written in Processing and Java and provides a straightforward approach to solving Sudoku puzzles.
| Demo |
| ------------- |
| <p align="center">https://github.com/SantiagoAnzola1/SudokuResolver/assets/134959710/3fdd1154-6323-4a3b-a700-37384b27c75d</p>|

## Features:
  - Implementation of the Breadth-First Search (BFS) algorithm.
  - Implementation of the Depth-First Search (DFS) algorithm.
  - Efficiently solves Sudoku puzzles by systematically exploring all possible states.
  - Utilizes a queue data structure to manage the frontier of nodes during the search.
  - Implements a Node class to represent Sudoku puzzle states and track the solution path.
  - Provides customizable functions to generate successor states and test the goal state.
  - Takes a .txt file as initial sudoku input, with 9 rows of values ranging from 1 to 9 and empty cells represented with 0.

| File Format .txt | Upon Loading |
| ------------- | ------------- |
| <p align="center"><img width="50%" src="https://github.com/SantiagoAnzola1/SudokuResolver/assets/134959710/27f18dab-4733-460a-9fbf-f006eef7b495" /></p> | <p align="center"><img  width="50%" src="https://github.com/SantiagoAnzola1/SudokuResolver/assets/134959710/0b920094-d961-4217-8b5d-893de094c3cd" /></p>  |

## 💻 How it works?
  - <strong>Number Insertion: </strong> Select the cell and press numeric keys (1-9) to insert numbers into cells.
  - <strong>:arrow_left:: </strong> Use the backspace key to clear all numbers from the board.
  - <strong>Delete: </strong> Press the Delete key to remove the number from the selected cell.
  - <strong>P: </strong> Prints the current Sudoku in the console by pressing 'P' or 'p'.
  - <strong>V: </strong> Verifies if the current Sudoku is valid by pressing 'V' or 'v'.
  - <strong>C: </strong> Loads a predefined Sudoku from the 'sud1.txt' file by pressing 'C' or 'c'.
  - <strong>D: </strong> Attempts to solve the current Sudoku using Depth-First Search by pressing 'D' or 'd'. Displays the solution, cost, and depth in the console.
  - <strong>B: </strong> Attempts to solve the current Sudoku using Breadth-First Search by pressing 'B' or 'b'. Displays the solution, cost, and depth in the console.


## :game_die: Try it out:
  1.  Clone the repository to your local machine.
  2.  Open the project in your Processing development environment.
  3.  Run the _sudoku.pde_ class, which contains the graphical interface of the model.
  4.  Call the search methods after loading the initial Sudoku puzzle as input.
  5.  The algorithm will systematically explore the state space until it finds a solution or exhausts the search space.
  6.  The solved Sudoku puzzle will be printed as a 2D array of integers.


## :clipboard: Requirements:
  - Install Processing. [^1]
  - Java Development Kit (JDK) installed on your system.

## 📁 Files:
  - **sudoku.pde:** graphical interface of Sudoku.
  - **IntArtificial.pde:** Contains the main implementation of BFS, DFS algorithms, and validation to solve Sudoku puzzles.
  - **Node.pde:** Defines the Node class, representing Sudoku puzzle states.
  - **Estado.pde:** Represents the Sudoku puzzle state.
  - **AccionSucesor.pde:** Defines the AccionSucesor class, representing actions and successor states.
  - **sud.txt / sud1.txt:** Contain the initial state of the sudoku.




[^1]: https://processing.org/download
