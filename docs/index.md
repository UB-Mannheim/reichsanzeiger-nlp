---
layout: default
title: Annotation guidelines
nav_order: 1
description: "Annotations guidelines for Reichsanzeiger"
permalink: /
---

# Annotation guidelines

Table of contents
* [Introduction](#introduction)
* [General instructions](#general-instructions)
* [References](#references)

**Status.** This is a draft version.

## Introduction

These guidelines are aimed to support manual annotation of the [Reichsanzeiger](https://github.com/UB-Mannheim/reichsanzeiger-gt) newspapers for NER & NEL tasks.

**Application context.** Our ultimate goal is to recognize and link the named entities from the historical newspaper Reichsanzeiger. It's roughly 500 thousands pages for years 1819-1945.

**Methodology.** These guidelines are created iteratively via:
* Adapting the existing annotation guidelines [1-4] on historical German texts for NER/NEL tasks,
* Analysing the sample pages from the Reichsanzeiger.

## General instructions

Manual annotators shall use only subtypes and components. 

### Entity types and subtypes

| Type | Subtypes | The entity refers to | Source |
|:----|:-----|:-----|:-----|
| PER | PER.ind | an individual | p.21 [5]; p.9 [1] |
| | PER.coll | more than one individual | p.21 [5]; p.9 [1] |
| ORG | ORG.adm | an organisation which plays a mainly administrative role | p.31 [5]; p.15 [1] |
| | ORG.ent | an organisation which doesn't play a mainly administrative role | p.29 [5]; p.14 [1] |
| LOC | LOC.adm | a territory with a geopolitical border (e.g., cities, city districts, countries & continents) | p.32 [5]; p.15 [1] |
| | LOC.phys | a physical location (e.g., mountains, rivers & planets) | p.34 [5]; p.17 [1] |
| | LOC.oro | an oronym (e.g., are streets, squares, roads & highways) | p.35 [5]; p.18 [1] |
| | LOC.fac | named buildings (train station & museum) & their extensions (stadium & campus); a physical location of an organisation | p.36 [5]; p.19 [1] |
| | LOC.add | physical & electronic addresses | p.37 [5]; p.20 [1] |
| PROD | PROD.media | media production (e.g., newspapers, magazines & sales catalogues)   | p.41 [5]; p.22 [1] |
| TIME | TIME.date.abs | an absolute date (specific date, not a relative date) | p.57 [5]; p.23 [1] |

### Components

| Component |  Description |
|:----|:-----|
| COMP.name | first, middle and last names as well as nickname and initials of a person |
| COMP.title | title or designator of a person |
| COMP.func | a function or job of a named person |
| COMP.qualifier | specifies a person in the form of a qualifying adjective |
| COMP.demonym | the geographical origin of a person |

## References

[1] Ehrmann, Watter, Romanello, & Clematide. (2019). Impresso Named Entity Annotation Guidelines (2.1). Zenodo. [https://doi.org/10.5281/zenodo.3585750](https://doi.org/10.5281/zenodo.3585750)

[2] Romanello, Matteo, & Najem-Meyer, Sven. (2022). Guidelines for the Annotation of Named Entities in the Domain of Classics (18.03.2022). Zenodo. [https://doi.org/10.5281/zenodo.6368101](https://doi.org/10.5281/zenodo.6368101)

[3] Ahmed Hamdi, Elvys Linhares Pontes, & Antoine Doucet. (2021). Annotation Guidelines for Named Entity Recognition, Entity Linking and Stance Detection (v3.1). Zenodo. [https://doi.org/10.5281/zenodo.4574199](https://doi.org/10.5281/zenodo.4574199)

[4] Menzel, Sina, Zinck, Josefine, & Petras, Vivien. (2020). Guidelines for Full Text Annotations in the SoNAR (IDH) Corpus (2.4). Zenodo. [https://doi.org/10.5281/zenodo.5116015](https://doi.org/10.5281/zenodo.5116015)

[5] Sophie Rosset, Cyril Grouin & Pierre Zweigenbaum. (2011). Entités nommées structurées: guide d'annotation Quaero. [pdf](http://www.quaero.org/media/files/bibliographie/quaero-guide-annotation-2011.pdf)
