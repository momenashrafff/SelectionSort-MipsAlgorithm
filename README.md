# SelectionSort-MipsAlgorithm
This is MIPS assembly implementation of the Selection Sort algorithm, developed as a university project for the German International University (GIU).

## Algorithm Description

This algorithm is written in MIPS assembly language and consists of the following main functions:

1. `Top_rank`: This function sorts the array in ascending order using the selection sort algorithm and returns the highest value in the array.

2. `Sel_Sort`: This function implements the selection sort algorithm to sort the array in ascending order.

3. `Sem_abroad`: This function searches for values in the array that are greater than 70 and returns the starting address of the subarray.

## Usage

To use the program, follow these steps:

1. Set the initial values of the array in the `.data` section of the code.

2. Call the `Top_rank` function to sort the array and retrieve the highest value.

3. Call the `Sel_Sort` function to sort the array in ascending order.

4. Call the `Sem_abroad` function to find the subarray containing values greater than 70.

## Instructions

To assemble and run the MIPS assembly code, you need a MIPS simulator or emulator. You can use the MARS simulator, SPIM, or any other compatible tool. Here's an example of running the code using MARS:

1. Open the MIPS assembly code file in the MARS simulator.

2. Set the MIPS simulator settings (e.g., program arguments, data segment values, etc.).

3. Assemble the code.

4. Run the program.
