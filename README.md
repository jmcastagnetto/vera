# The VERA dataset

This simple package contains the acronyms and definitions from the VERA list (Virtual Entity of Relevant Acronyms). 

The dataset has been generated using the ASCII version of the list available in https://www.ohei2.de/vera/vueber-e.html. That list was created and is maintained by Oliver Heidelbach. 

The [latest version of the ASCII VERA list at this time is dated 2016-10-31](https://www.ohei2.de/FTP/).

## Installation

```r
# install.packages("devtools")
devtools::install_github("jmcastagnetto/vera")
```

## Use

I added a simple function to retrieve the definitions of an acronym. It is very simple-minded and if there is no match, the returned dataframe is empty.

```r
> library(vera)
> get_definitions("RFP")$definition
[1] "Request for Package (Linux, Debian)"
[2] "Request For Proposal (Internet)"
> get_definitions("dag") # strings are always uppercased
     acronym                    definition
2327     DAG            DatenAnschaltGerät
2328     DAG Directed Acyclic Graph (NVSG)
```

## Motivation

Made this package to start grokking how to this in R, and the article on this topic by Erik Howard ["How to Create an R Data Package "](https://www.erikhoward.net/how-to-create-an-r-data-package/) was very helpful.

**License: MIT**
