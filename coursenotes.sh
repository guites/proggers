#!/bin/bash

md_filename="data-structures-and-algorithm-analysis-in-cpp.md"
html_filename="data-structures-and-algorithm-analysis-in-cpp.html"

html_header="""
<!DOCTYPE html>
<html lang=\"en\">
<head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <meta name=\"description\"
        content=\"Site do proggers bookclub\">
    <meta name=\"keywords\" content=\"programming, programação, clube do livro, bookclub\">
    <link rel=\"stylesheet\" href=\"holiday.css\">
    <title>Registro dos encontros: Proggers Bookclub</title>
    <style>
        h2:target::before {
            content: \">> \";
        }
    </style>
</head>
<body>"""

html_footer="""
</body>
</html>
"""

echo "$html_header" > "$html_filename"
markdown "$md_filename" >> "$html_filename"
echo "$html_footer" >> "$html_filename"