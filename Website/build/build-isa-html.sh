#!/usr/bin/env bash
# Regenerates ISA.html from ISA.md (the canonical source).
set -euo pipefail
cd "$(dirname "$0")/.."
pandoc ISA.md \
  --from gfm+yaml_metadata_block \
  --to html5 \
  --standalone \
  --template build/isa-template.html \
  --toc --toc-depth=2 \
  --section-divs \
  --no-highlight \
  -M pagetitle="kingsleyobi.com — Frontend ISA" \
  -M title="" -M subtitle="" \
  -o ISA.html
echo "wrote ISA.html"
