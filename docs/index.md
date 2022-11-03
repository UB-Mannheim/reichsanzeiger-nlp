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
* [Entities](#entities)
* [Entity Linking](#entity-linking)
* [References](#references)

**Status.** This is a draft version.

## Introduction

These guidelines are aimed to support manual annotation of the [Reichsanzeiger](https://github.com/UB-Mannheim/reichsanzeiger-gt) newspapers for NER & NEL tasks.

**Application context.** Our ultimate goal is to recognize and link the named entities from the historical newspaper Reichsanzeiger. It's roughly 500 thousands pages for years 1819-1945. 

The main language of the newspapers is German. The tiny parts are written in French.

**Methodology.** These guidelines are created iteratively via:
* Adapting the existing annotation guidelines [1-4] on historical German texts for NER/NEL tasks (mainly [1] based on the annotation guidelines for French texts [5]),
* Analysing the sample pages from the Reichsanzeiger.

## General instructions

Manual annotators shall use only subtypes and components. The only exception is the type EVENT: the events should be annotated as EVENT.

### Entity types and subtypes

The types and their subtypes categorize a named entity. This is the first level of annotation referring to a general segmentation of words into major categories [6]. The taxonomy follows mainly [1] and [5], which are consistent except of the EVENT type (see the Source-column).

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
| TIME | TIME.date.abs | an absolute date (specific date, not a relative date; the dates containing only a day and a month, only a year or only a century) | p.57 [5]; p.23 [1] |
| EVENT | EVENT | an event | p.63 [5] |

TO DO: decide on TIME.range or TIME.interval types for intervals between two TIME.date.abs

### Components

Components categorize the elements inside a named entity. This is the second level of annotation helping to determine the named entity type and to set the named entity boundaries [6]. The components can never be used outside the scope of a type or subtype element [6]. A named entity can consist of one or more components as well as the parts without components. The components of the type PERSON are:

| Component |  Description |
|:----|:-----|
| COMP.name | first, middle and last names as well as nickname and initials of a person |
| COMP.title | title or designator of a person |
| COMP.func | a function or job of a named person |
| COMP.qualifier | specifies a person in the form of a qualifying adjective |
| COMP.demonym | the geographical origin of a person |

### Nested entities and special constructions

**Nested entities.** A nested entity is an entity nested in another entity or in entity component. There are no limits on nesting levels during annotation.

**Components of nested entities.** In contrast to [1], components of nested entities are also annotated.

### Ambiguities

**Unsolvable entity type ambiguities.**

TO DO: do we want to take this into account?

**Metonymy.**

TO DO: do we want to take this into account?

## Entities

### Person (PER)

#### Subtypes

* PER.ind:  the entity refers to an individual.
* PER.coll: the entity refers to more than one individual. A proper name should be a part of the entity.

#### Coverage of the type Person

* Considered as Person:
  * real person (e.g., Karl August von Hardenberg)
  * imaginary characters and characters of literature pieces (e.g., Marthe Schwerdtlein)
  * religious figures (God)
* Not considered as Person: (TO DO: decide on this keeping in mind the entity linking task)
  * expressions without a proper name
  * demonyms which do not modify a proper name
  * isolated functions not attached to a person name

#### Person Components

* COMP.func (a function or job of a named person):
  * an occupation, profession or specialty (e.g., Zimmermann, Richter)
  * an administrative function in public or private area (e.g., Vorsitzender, Außenminister)
  * social roles and status (e.g., Häftling)
  * a function always includes the organization, place or specialization attached to it [1]
* COMP.title (title or designator of a person):
  *  a civil or honorific prefix (e.g., Frau, Herr, Dr., Majestät, königliche Hoheit), military titles (e.g., General, Leutnant), nobility titles and royal titles (Fürstin, Gräfin, Herzog, Ritter, Junker)
* COMP.qualifier (specifies a person in the form of a qualifying adjective):
  * any adjective qualifying the entity (e.g., sozialistische)
* COMP.name (first, middle and last names as well as nickname and initials of a person):
  * covers first-, middle-, last- and nickname (e.g., Karl)
* COMP.demonym (the geographical origin of a person):
  * a noun or adjective that identifies residents of a particular place (e.g., Bayerische)

#### Tricky cases for Person

## Entity linking

## References

[1] Ehrmann, Watter, Romanello, & Clematide. (2019). Impresso Named Entity Annotation Guidelines (2.1). Zenodo. [https://doi.org/10.5281/zenodo.3585750](https://doi.org/10.5281/zenodo.3585750)

[2] Romanello, Matteo, & Najem-Meyer, Sven. (2022). Guidelines for the Annotation of Named Entities in the Domain of Classics (18.03.2022). Zenodo. [https://doi.org/10.5281/zenodo.6368101](https://doi.org/10.5281/zenodo.6368101)

[3] Ahmed Hamdi, Elvys Linhares Pontes, & Antoine Doucet. (2021). Annotation Guidelines for Named Entity Recognition, Entity Linking and Stance Detection (v3.1). Zenodo. [https://doi.org/10.5281/zenodo.4574199](https://doi.org/10.5281/zenodo.4574199)

[4] Menzel, Sina, Zinck, Josefine, & Petras, Vivien. (2020). Guidelines for Full Text Annotations in the SoNAR (IDH) Corpus (2.4). Zenodo. [https://doi.org/10.5281/zenodo.5116015](https://doi.org/10.5281/zenodo.5116015)

[5] Sophie Rosset, Cyril Grouin & Pierre Zweigenbaum. (2011). Entités nommées structurées: guide d'annotation Quaero. [[pdf](http://www.quaero.org/media/files/bibliographie/quaero-guide-annotation-2011.pdf)]

[6] Cyril Grouin, Sophie Rosset, Pierre Zweigenbaum, Karën Fort, Olivier Galibert, and Ludovic Quintard. (2011). Proposal for an Extension of Traditional Named Entities: From Guidelines to Evaluation, an Overview. In Proceedings of the 5th Linguistic Annotation Workshop, pages 92–100, Portland, Oregon, USA. Association for Computational Linguistics. [[pdf](https://aclanthology.org/W11-0411.pdf)]
