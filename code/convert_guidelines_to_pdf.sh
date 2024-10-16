#!/bin/bash
# Before using this script, add "\newpage" to "../docs/index.md"
# Input Markdown file
INPUT_FILE="../docs/index.md"

# Output PDF file
OUTPUT_FILE="../docs/annotation_guidelines.pdf"

sed -i '' 's/→/->/g' "$INPUT_FILE"

# Run Pandoc to convert Markdown to PDF
pandoc "$INPUT_FILE" -o "$OUTPUT_FILE" --pdf-engine=xelatex \
    -V mainfont="Noto Sans" \
    -V monofont="Noto Sans Mono" \
    --metadata title="Annotation Guidelines for Reichsanzeiger-NLP (NER and NEL tasks)" \
    --toc \
    --toc-depth=3 \
    -V geometry:margin=1.5in
