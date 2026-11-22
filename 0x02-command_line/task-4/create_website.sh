#!/usr/bin/env bash

# Set default output path or use the first argument if provided
TARGET_DIR="${1:-$HOME/radius-projects/website-project}"

# Protect existing directories from being overwritten
if [ -e "$TARGET_DIR" ]; then
    echo "Error: Destination '$TARGET_DIR' already exists. Aborting to prevent overwriting existing files."
    exit 1
fi

# Create the website directory structure
mkdir -p "$TARGET_DIR/css" "$TARGET_DIR/js" "$TARGET_DIR/images"

# Generate root README.md
cat > "$TARGET_DIR/README.md" <<'INNER_EOF'
# Website Project

This is a starter website project generated automatically using create_website.sh.

## Project Structure
- index.html: Main HTML5 entry point.
- css/: Stylesheets for layout and visual design.
- js/: JavaScript files for interactive behavior.
- images/: Static image assets.
INNER_EOF

# Generate index.html
cat > "$TARGET_DIR/index.html" <<'INNER_EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Website Project</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>Welcome to My Website Project</h1>
    </header>
    <main>
        <p>This project structure was automated with a Bash script.</p>
    </main>
    <script src="js/script.js"></script>
</body>
</html>
INNER_EOF

# Generate css/style.css and css/README.md
cat > "$TARGET_DIR/css/style.css" <<'INNER_EOF'
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    line-height: 1.6;
    background-color: #f4f6f8;
    color: #222;
    padding: 2rem;
}

header h1 {
    color: #1a56db;
    margin-bottom: 1rem;
}
INNER_EOF

cat > "$TARGET_DIR/css/README.md" <<'INNER_EOF'
# CSS Directory

This directory contains all Cascading Style Sheets (.css) responsible for styling, layout, colors, and responsive design across the website.
INNER_EOF

# Generate js/script.js and js/README.md
cat > "$TARGET_DIR/js/script.js" <<'INNER_EOF'
document.addEventListener("DOMContentLoaded", () => {
    console.log("Website project loaded successfully!");
});
INNER_EOF

cat > "$TARGET_DIR/js/README.md" <<'INNER_EOF'
# JavaScript Directory

This directory stores client-side JavaScript (.js) files that handle DOM manipulation, user events, and interactive page functionality.
INNER_EOF

# Generate images/README.md
cat > "$TARGET_DIR/images/README.md" <<'INNER_EOF'
# Images Directory

This directory holds static visual assets used on the site, such as logos, icons, banners, and photographs (.png, .jpg, .svg, .webp).
INNER_EOF

# Display completion message with full path
echo "Success: Website project generated at: $TARGET_DIR"
