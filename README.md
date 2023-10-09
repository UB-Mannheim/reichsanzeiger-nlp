# Reichsanzeiger NLP

This is work in progress. The goal is creating a NLP ground truth corpus based on [the OCR ground truth data](https://github.com/UB-Mannheim/reichsanzeiger-gt) for the historical newspaper [Deutscher Reichsanzeiger und Preußischer Staatsanzeiger](https://de.wikipedia.org/wiki/Deutscher_Reichsanzeiger) (1819-1945). It was scanned and OCR-ed at [UB Mannheim](https://github.com/UB-Mannheim).

## Ongoing work

* :white_check_mark: Convert the unprocessed text lines from [Reichsanzeiger PAGE XML](https://github.com/UB-Mannheim/reichsanzeiger-gt/tree/main/page-xml) files to separate lines in TXT files [via [blatt to_txt](https://github.com/UB-Mannheim/blatt)]. See `data/text_raw/`.
* :white_check_mark: Remove hyphens & line breaks from the text lines from [Reichsanzeiger](https://github.com/UB-Mannheim/reichsanzeiger-gt/tree/main/page-xml) files and save them as plain text in TXT files [via [blatt to_txt](https://github.com/UB-Mannheim/blatt)]. See [data/text_unhyphenated/](https://github.com/UB-Mannheim/reichsanzeiger-nlp/tree/main/data/text_unhyphenated).
* :white_check_mark: Split plain text without line breaks & without hyphens into sentences & save it as one sentence per line TSV files [via [blatt to_tsv](https://github.com/UB-Mannheim/blatt)]. See [data/sentences_raw/](https://github.com/UB-Mannheim/reichsanzeiger-nlp/tree/main/data/sentences_raw).
* :white_check_mark: Correct sentence splitting manually and remove "noisy data" (e.g., tables). See [data/sentences_checked/](https://github.com/UB-Mannheim/reichsanzeiger-nlp/tree/main/data/sentences_checked).
* :white_check_mark: Import plain text (one sentence per line) to [INCEpTION](https://inception-project.github.io)
* :hourglass_flowing_sand: Create the [annotation guidelines](https://ub-mannheim.github.io/reichsanzeiger-nlp)
* :white_check_mark: Create a tagset and annotation layer in [INCEpTION](https://inception-project.github.io) according to the annotation guidelines. See [inception/tagsets/](https://github.com/UB-Mannheim/reichsanzeiger-nlp/tree/main/inception/tagsets) and [inception/layers](https://github.com/UB-Mannheim/reichsanzeiger-nlp/tree/main/inception/layers).
* :hourglass_flowing_sand: Annotate plain text according to the annotation guidelines
* :hourglass_flowing_sand: Export the annotations in INCEpTION formats (e.g., [UIMA CAS XMI](https://inception-project.github.io/releases/24.2/docs/user-guide.html#sect_formats_uimaxmi)). See [data/UIMA_CAS_XMI_v1.0/](https://github.com/UB-Mannheim/reichsanzeiger-nlp/tree/main/data/UIMA_CAS_XMI_v1.0).
* :white_check_mark: Create a convertor from XMI to IOB format and convert XMI files into IOB files (created [cas2iob](https://github.com/UB-Mannheim/cas2iob))
* :soon: Correct tokenization manually in IOB format
* :soon: Train baseline models for NER/NEL

## Annotation Software: INCEpTION

We tested [INCEpTION](https://inception-project.github.io), [neat](https://github.com/qurator-spk/neat) and [MedTator](https://github.com/OHNLP/MedTator). [INCEpTION](https://inception-project.github.io) is chosen as the most advanced among them.

When we annotate old German plain text in  [INCEpTION](https://inception-project.github.io) and [MedTator](https://github.com/OHNLP/MedTator) and export annotations in IOB format, tokenization is often incorrect. In these cases one can use [neat](https://github.com/qurator-spk/neat) as tokenization corrector. 

If we import plain text with one sentence per line  instead of just plain text into [INCEpTION](https://inception-project.github.io), the annotations exported into IOB format have a decent quality of tokenization.

## Annotation Guidelines

We decided to develop the [annotation guidelines](https://ub-mannheim.github.io/reichsanzeiger-nlp) iteratively based on the existing annotation guidelines for historical German texts as well as via analysing the sample pages from the Reichsanzeiger.

## Related work

#### HIPE competition on historical texts – Identifying Historical People, Places and other Entities

* [CLEF-HIPE-2020](https://impresso.github.io/CLEF-HIPE-2020) [[datasets](https://github.com/impresso/CLEF-HIPE-2020/tree/master/data)] [[guidelines](https://zenodo.org/record/3677171#.Yuy2ordByqA)]
* [HIPE-2022](https://hipe-eval.github.io/HIPE-2022) [[tasks & data](https://hipe-eval.github.io/HIPE-2022/tasks)] [[paper](https://hipe-eval.github.io/HIPE-2022/assets/pdf/HIPE2022_ECIR_shortpaper_postprint.pdf)]

#### Existing NER/NEL corpora for historical German

| Dataset | Text type | Century | Project | Annotation Guidelines | Annotation Tool | Tasks | Tagset | License |
|:------:|:------:|:------:|:------:|:------:|:------:|:------:|:------:|:------:|
| [AjMC](https://github.com/hipe-eval/HIPE-2022-data/blob/main/documentation/README-ajmc.md) | Commentaries | XIX | [Ajax MultiCommentary](https://mromanello.github.io/ajax-multi-commentary) | [Zenodo](https://doi.org/10.5281/zenodo.6368101) | [INCEpTION](https://inception-project.github.io) | NER, NEL | pers, work, loc, object, date, scope | [![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/) |
| [HIPE-2020](https://github.com/hipe-eval/HIPE-2022-data/blob/main/documentation/README-hipe2020.md) | Newspaper | mid XIX - mid XX | [CLEF-HIPE-2020](https://impresso.github.io/CLEF-HIPE-2020)  | [Zenodo](https://doi.org/10.5281/zenodo.3585750) | [INCEpTION](https://inception-project.github.io) | NER, NEL | pers, org, prod, time, loc  | [![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC_BY--NC--SA_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/) |
| [Newseye](https://github.com/hipe-eval/HIPE-2022-data/blob/main/documentation/README-newseye.md) | Newspaper | mid XIX - mid XX | [Newseye](https://www.newseye.eu) | [Zenodo](https://doi.org/10.5281/zenodo.4574199) | [Transkribus](https://readcoop.eu/transkribus) | NER, NEL | PER, LOC, ORG, HumanProd | [![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/) |
| [SoNAR](https://github.com/hipe-eval/HIPE-2022-data/blob/main/documentation/README-sonar.md) | Newspaper | mid XIX - mid XX | [SoNAR](https://sonar.fh-potsdam.de) | [Zenodo](https://doi.org/10.5281/zenodo.5116015) | [neat](https://github.com/qurator-spk/neat) | NER, NEL | PER, LOC, ORG | [![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/) |

#### Reichsanzeiger at UB Mannheim

* [Digital edition of Reichsanzeiger](https://digi.bib.uni-mannheim.de/periodika/reichsanzeiger)
* [Reichsanzeiger wiki at GitHub](https://github.com/UB-Mannheim/Reichsanzeiger/wiki)
* [Reichsanzeiger OCR ground truth GitHub repo](https://github.com/UB-Mannheim/reichsanzeiger-gt)
* [Reichsanzeiger GitHub repo](https://github.com/UB-Mannheim/Reichsanzeiger)
