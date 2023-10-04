#!/bin/bash

# convert PAGE XML files from PAGE-folder to data/text_raw/
blatt to_txt -lb=True PAGE data/text_raw

# convert PAGE XML files from PAGE-folder to data/text_unhyphenated/
blatt to_txt -lb=False PAGE data/text_unhyphenated

# split plain text without line breaks & without hyphens into sentences & save it as one sentence per line TSV files
blatt to_tsv --sentence=True PAGE data/sentences_raw
