# Metadata for the data-subfolders and files

| folder | what is in the files |
|:------:|:------:|
| text_raw | uprocessed text lines from PAGE XML as lines with line breaks in TXT |
| text_unhyphenated| text lines without line breaks and without hyphens in TXT|
| sentences_raw| sentences obtained via SegTok into separates lines of TSV |
| sentences_checked| manually corrected sentences_raw |
| annotations_1 | annotated files by annotator 1 in UIMA CAS XMI format v1.1 (see [user guide](https://inception-project.github.io/releases/24.3/docs/user-guide.html#sect_formats_uimaxmi)) |
| annotations_2 | annotated files by annotator 2 in UIMA CAS XMI format v1.1 (see [user guide](https://inception-project.github.io/releases/24.3/docs/user-guide.html#sect_formats_uimaxmi)) |
| curated | curated annotated data in UIMA CAS XMI format v1.1 (see [user guide](https://inception-project.github.io/releases/24.3/docs/user-guide.html#sect_formats_uimaxmi)) |

## Found errors
1881_1_0662.xmi -- "Verein." and "Staaten Amerikas" in two consequent lines. It's error of sentence splitting.
