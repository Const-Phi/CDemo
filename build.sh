#!/bin/bash
# Сборка
gcc -std=c2x -o ./bin/demo -g -Wall -pedantic main.c ./src/libdemo.c -I./include