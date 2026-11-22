cat > 0x02-command_line/task-2/README.md <<'EOF'
# Task 2: File and Directory Management

## Commands Practised
mkdir, touch, echo, cat, head, tail, wc, cp, mv, rm, ls -l

## Command Explanations
- mkdir -p: Creates directories, including any missing parent directories.
- cp: Copies files or directories from a source path to a destination path.
- mv: Moves or renames files and directories.
- rm: Permanently deletes files.
- wc -l: Counts the number of lines in a file.

## Redirection (> vs >>)
- > redirects output to a file and overwrites any existing content.
- >> redirects output to a file and appends new content to the end without erasing existing lines.

## File Permissions Observation
Running ls -l displays permission strings such as -rw-r--r--, indicating a regular file (-) where the owner has read and write permissions (rw-), while the group and other users have read-only permissions (r--).
EOF