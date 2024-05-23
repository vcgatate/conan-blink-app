#!/bin/bash
# Compile the C++ program
g++ -o my_program main.cpp

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "Compilation successful."

    # Run the program
    ./my_program

    # Check if program execution was successful
    if [ $? -eq 0 ]; then
        echo "Program executed successfully."
    else
        echo "Error: Program execution failed."
    fi
else
    echo "Error: Compilation failed"
fi
