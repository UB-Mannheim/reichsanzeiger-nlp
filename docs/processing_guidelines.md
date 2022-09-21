---
layout: default
title: Processing guidelines
nav_order: 1
description: "Processing guidelines for Reichsanzeiger"
permalink: /processing
---

# Processing guidelines

Table of contents
* [Sentence splitting](#sentence-splitting)

## Sentence splitting

First, we split the plain text without line breaks & without hyphens into sentences via the SegTok library & save the sentences into separate lines of TSV files [via [blatt to_tsv](https://github.com/UB-Mannheim/blatt)]. See `data/sentences_raw/`.
Then, we correct sentence splitting manually and remove "noisy data" (e.g., tables), see `data/sentences_corrected/`.
