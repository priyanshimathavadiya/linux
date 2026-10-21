#!/bin/bash

find . -name "*.obj" -delete
find . -name "*.lst" -delete
find . -size 0 -delete
