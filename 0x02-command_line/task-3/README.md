cat > ~/radius-zero_day/0x02-command_line/task-3/README.md <<'EOF'
# Task 3: Finding Files & Searching File Contents

## Purpose of find
The find command searches through directory trees to locate files and folders based on filesystem attributes such as file name (-name), file type (-type f for files, -type d for directories), size, or modification date.

## Purpose of grep
The grep command searches inside the contents of files for lines that match a specific word or pattern. Useful options include:
- -n: Displays the matching line number.
- -i: Performs a case-insensitive search.
- -R: Searches through directories and subdirectories recursively.

## Difference Between Finding a Filename and Searching Inside a File
- **Finding a filename (find):** Checks only file and directory metadata (names, paths, and types) without opening or reading the text inside the files.
- **Searching inside a file (grep):** Opens and reads the actual text content inside files to locate matching words or patterns.

## Explanation of the Combined find and grep Command
`bash
find practice/search-lab -type f -name "*.txt" -exec grep -Hni "JavaScript" {} +