## This README provides instructions on how to run the program and use the various Makefile commands

## Prerequisites

Ensure you have the following installed:
- GCC (GNU Compiler Collection) 
- Make

## Steps to Run the Program

1. **Clone the Repository**
    ```sh
    git clone <repository_url>
    cd makefile_assignment
    ```

2. **Build and run the program using the default rule (first rule)**
    ```sh
    make
    ```

## Makefile Commands

- **Build and run the program**
  ```sh
  make
  ```
  This command compiles the source files, creates the executable, and runs it automatically.

- **Clean the build files**
  ```sh
  make clean
  ```
  This command removes the compiled object files and the executable.

- **Rebuild the program**
  ```sh
  make rebuild
  ```
  This command cleans the build files, recompiles the source files and runs the program.

- **Print the value of a Make variable**
  ```sh
  make print-VARIABLE_NAME
  ```
  This command prints the value of the specified make variable.

- **Generate assembly files**
  ```sh
  make filename.s
  ```
  This command generates an assembly file from the specified source file (replace `filename` with the actual source file name without the `.c` extension).

  