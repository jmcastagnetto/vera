# The VERA dataset

This simple package contains the acronyms and definitions from the VERA list (Virtual Entity of Relevant Acronyms).

The original maintainer of the VERA list is Oliver Heidelbach, and you can find the source and more information at: https://www.ohei2.de/vera/vueber-e.html

The dataset in this package was built from the latest version at this time, dated 2016-10-31.

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

# Motivation

Made this package to start grokking how to this in R, and the article on this topic by Erik Howard ["How to Create an R Data Package "](https://www.erikhoward.net/how-to-create-an-r-data-package/) was very helpful.

**License: MIT**
