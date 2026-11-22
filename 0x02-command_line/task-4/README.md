# Task 4: Bash Scripting — Automated Website Project Generator

## What the Script Does
create_website.sh automates the setup of a starter frontend website project. It creates a structured project folder containing index.html, css/style.css, js/script.js, an images/ folder, and descriptive README.md files for each section.

## How to Execute It
1. Make the script executable: chmod +x task-4/create_website.sh
2. Run the script from the terminal: ./task-4/create_website.sh

## Default Output Location
When executed without any command-line arguments, the script creates the project at ~/radius-projects/website-project/.

## Providing a Custom Output Location
Pass a custom directory path as the first argument ($1), wrapped in quotes to support spaces: ./task-4/create_website.sh "$HOME/radius-projects/custom website"

## How Existing Directories Are Protected
Before creating any folders or files, the script checks if [ -e "$TARGET_DIR" ]. If the path already exists, it displays an error message and exits immediately (exit 1) without overwriting existing files.
