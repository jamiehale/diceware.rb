#! /usr/bin/env bash

grep -o -E '\w+' | tr '[:upper:]' '[:lower:]' | sort -u

