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
* [Examples](#examples)
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
| TIME | TIME.date.abs | an absolute date (specific date, not a relative date; the dates containing only a day and a month, a month and a year, only a year or only a century) | p.57 [5]; p.23 [1] |
| TIME | TIME.range | a time interval between two absolute dates | - |
| EVENT | EVENT | an event | p.63 [5] |

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

TODO

## Entity linking

TODO

## Examples

### PERSON

```Sr. hochfürſtlichen Durchl. des Prinzen Friedrich, Sohnes Sr. Hoheit des Kurprinzen.```
```xml
<PER.ind> 
        <COMP.title>Sr. hochfürſtlichen Durchl.</COMP.title> 
        des
        <COMP.title>Prinzen</COMP.title> 
        <COMP.name>Friedrich</COMP.name>,
        <COMP.func>Sohnes
            <PER.ind> 
                <COMP.title>Sr. Hoheit</COMP.title>
                des
                <COMP.title>Kurprinzen </COMP.title>
            </PER.ind>
        </COMP.func> 
</PER.ind>
```

```Kaiſerlich Oeſterreichſche Kabinets⸗Kourier Vardioro.```
```xml
<PER.ind>
    <COMP.title>Kaiſerlich></COMP.title> 
    <COMP.demonym>Oeſterreichſche</COMP.demonym>
    <COMP.func>Kabinets⸗Kourier</COMP.func>
    <COMP.name>Vardioro</COMP.name>
</PER.ind>
```

```Prinzeßinen Töchtern, Amalie und Maria.```
```xml
<PER.coll>
    <COMP.title>Prinzeßinen</COMP.title>
    Töchtern,
    <COMP.name>Amalie</COMP.name>
    und
    <COMP.name>Maria</COMP.name>
</PER.coll>
```

```Kommandeurs des Ordens des Heiligen Geiſtes den Kardinal de la Luzerne, den Kardinal de Bausset, den Erzbiſchof von Bordeaux und den Abbe Montesquiou.```
```xml
<PER.coll>
    <COMP.func>Kommandeurs des
        <ORG.ent>Ordens des Heiligen Geiſtes</ORG.ent>
    </COMP.func>
    den
    <PER.ind>
        <COMP.func>Kardinal</COMP.func>
        de la
        <COMP.demonym>Luzerne</COMP.demonym>
    </PER.ind>,
    den 
    <PER.ind>
        <COMP.func>Kardinal</COMP.func>
        <COMP.name>de Bausset</COMP.name>
    </PER.ind>,
    <PER.ind>
        den
        <COMP.func>Erzbiſchof</COMP.func>
        <COMP.demonym>von Bordeaux</COMP.demonym>
    </PER.ind>
    und
    <PER.ind>
        den
        <COMP.func>Abbe</COMP.func>
        Montesquiou
    </PER.ind>
</PER.coll>
```

```Herzog und die Herzogin von Angouleme```
```xml
<PER.coll>
    <PER.ind>
        <COMP.title>Herzog</COMP.title>
    </PER.ind>
    und die 
    <PER.ind>
        <COMP.title>Herzogin</COMP.title>
    </PER.ind>
    <COMP.name>von Angouleme</COMP.name>
</PER.coll>
```

```Frau von Lepel, geb. v. d. Lanken```
```xml
<PER.ind> Frau von 
     <COMP.name> Lepel </COMP.name>
     , geb. v. d. 
     <COMP.name> Lanken </COMP.name> 
 </PER.ind>
```

Nested entities with components are also annotated:
```Se. Exc. der General⸗Lieutenant, diesſeitiger außerordentlicher Geſandter und bevollmaͤchtigter Miniſter am Rußiſch Kaiſerlichen Hofe Freiherr von Schoͤler.```
```xml
<PER.ind>
    <COMP.title>Se. Exc. der General⸗Lieutenant</COMP.title>,
    <COMP.func>diesſeitiger außerordentlicher Geſandter</COMP.func>
    und
    <COMP.func>bevollmaͤchtigter Miniſter am Rußiſch Kaiſerlichen Hofe</COMP.func>
    <COMP.title>Freiherr</COMP.title>
    <COMP.name>von Schoͤler</COMP.name>
</PER.ind>
```

```Britiſche General⸗Konſul in Tripolis, Herr Warrington```
```xml
<PER.ind>
     <COMP.func>
     <COMP.demonym>Britiſche</COMP.demonym>
      General⸗Konſul in
     <LOC.adm>Tripolis</LOC.adm>
     </COMP.func>
     ,Herr
     <COMP.name>Warrington</COMP.name>
</PER.ind>
```

####  tricky cases for person

Page 13 in [1].

How to treat the following cases?
* surnames with "von" and a city
* surnames with "Abbe" and a city
* etc

How do we choose between these cases?
* a person contains COMP.func with LOC.adm inside
```xml
<PER.ind>
    <COMP.func>Abbe
        <LOC.adm>Montesquiou</LOC.adm>
    </COMP.func>
</PER.ind>
```
* a person contains COMP.func with COMP.demonym inside
```xml
<PER.ind>
    <COMP.func>Abbe
        <COMP.demonym>Montesquiou</COMP.demonym>
    </COMP.func>
</PER.ind>
```
* a person contains COMP.func only
```xml
<PER.ind>
    <COMP.func>Abbe Montesquiou</COMP.func>
</PER.ind>
```
* a person contains COMP.func and COMP.demonym
```xml
<PER.ind>
    <COMP.func>Abbe</COMP.func>
    <COMP.demonym>Montesquiou</COMP.demonym>
</PER.ind>
```
* a person contains COMP.func and LOC.adm
```xml
<PER.ind>
    <COMP.func>Abbe</COMP.func>
    <LOC.adm>Montesquiou</LOC.adm>
</PER.ind>
```

Similar cases:

```xml
<PER.ind>
    <COMP.func>Kardinal</COMP.func>
    de la
    <COMP.demonym>Luzerne</COMP.demonym>
</PER.ind>
```

```xml
<PER.ind>
    den
    <COMP.func>Erzbiſchof von Bordeaux</COMP.func>
</PER.ind>
```

How to choose between COMP.demonym and LOC.adm?

### EVENT

Schlacht an der Katzbach: specific and a Wikipedia page exists

Geburt des jungen Prinzen: not specific, no Wikipedia page

### DATE

21ster d. Mts -> not specific -> not annotated

Michaelis d. J. -> 29. September 

Ende Dezember 1831: not specific -> not annotated
Dezember 1831: specific -> annotated

### LOCATION

Streets with house numbers, annotated as LOC.add, will no be linked to streets or buildings at Wikidata.

Ireland, when alone: https://www.wikidata.org/wiki/Q22890

Great Britain and Ireland, together (1801- 1927): https://www.wikidata.org/wiki/Q174193

Great Britain, when alone: https://www.wikidata.org/wiki/Q23666

Berl n / Leipz g to Berlin / Leipzig 

```Berlin Breitestaße No 20```
```xml
<loc.adm> Berlin </loc.adm>
<loc.add> Breitestaße No 20 </loc.add> 
```
In case of locations that can't be clealy attributed to a city or another location because they are both a city and a location with the same name exist (for example: Samos -> is both city and island) no QID is assigned 

Gardens: LOC.phys (e.g. Jardin des Tuileries)

Islands: LOC.adm 

Theaters: LOC.fac 

ancient cities: LOC.adm (e.g. Pompeii)

### ORGANISATION

```Pariser Bijoutier Odiot```
```xml
<ORG.ent>
     <COMP.demonym>Pariser</COMP.demonym>
     Bijoutier
     <PER.ind>Odiot</PER.ind>
 </ORG.ent> 
```
PER.ind not annotated

Museums: ORG.ent

Königliche Regierungs-Hauptkasse, Königlichen Staatsschulden-Tilgungskasse etc.: ORG.adm

hospitals: ORG.ent

### PROD.media

names Preußischer Staatsanzeiger: https://www.wikidata.org/wiki/Q55257346 

## References

[1] Ehrmann, Watter, Romanello, & Clematide. (2019). Impresso Named Entity Annotation Guidelines (2.1). Zenodo. [https://doi.org/10.5281/zenodo.3585750](https://doi.org/10.5281/zenodo.3585750)

[2] Romanello, Matteo, & Najem-Meyer, Sven. (2022). Guidelines for the Annotation of Named Entities in the Domain of Classics (18.03.2022). Zenodo. [https://doi.org/10.5281/zenodo.6368101](https://doi.org/10.5281/zenodo.6368101)

[3] Ahmed Hamdi, Elvys Linhares Pontes, & Antoine Doucet. (2021). Annotation Guidelines for Named Entity Recognition, Entity Linking and Stance Detection (v3.1). Zenodo. [https://doi.org/10.5281/zenodo.4574199](https://doi.org/10.5281/zenodo.4574199)

[4] Menzel, Sina, Zinck, Josefine, & Petras, Vivien. (2020). Guidelines for Full Text Annotations in the SoNAR (IDH) Corpus (2.4). Zenodo. [https://doi.org/10.5281/zenodo.5116015](https://doi.org/10.5281/zenodo.5116015)

[5] Sophie Rosset, Cyril Grouin & Pierre Zweigenbaum. (2011). Entités nommées structurées: guide d'annotation Quaero. [[pdf](http://www.quaero.org/media/files/bibliographie/quaero-guide-annotation-2011.pdf)]

[6] Cyril Grouin, Sophie Rosset, Pierre Zweigenbaum, Karën Fort, Olivier Galibert, and Ludovic Quintard. (2011). Proposal for an Extension of Traditional Named Entities: From Guidelines to Evaluation, an Overview. In Proceedings of the 5th Linguistic Annotation Workshop, pages 92–100, Portland, Oregon, USA. Association for Computational Linguistics. [[pdf](https://aclanthology.org/W11-0411.pdf)]
