#!/bin/bash
if $1 == "setup" then
    mkdir -p Documents/Egzamin
    mkdir -p Documents/Laby
    mkdir -p Documents/Kolokwia

    kolokwium_pattern='.*/Kolokwium.*'

    for file in SetupFiles/*; do
        if [[ $file =~ $kolokwium_pattern ]]; then
            cp $file Documents/Kolokwia
        fi
    done

    cp SetupFiles/EGZAMIN25_26.txt Documents/Egzamin
    cp SetupFiles/EGZAMIN25_26_poprawka.txt Documents/Egzamin

    cp SetupFiles/Laby/* Documents/Laby
fi
if $1 == "clean" then
    rm -r Documents/*
fi


