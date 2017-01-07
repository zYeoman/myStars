#!/usr/bin/env bash

starred --username=zYeoman --sort > README.md
git add .
git commit -m ":sparkles: Update"
git push
