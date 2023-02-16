#!/bin/bash
url="https://www.ecdc.europa.eu/en/covid-19/variants-concern";
contents=$(curl --silent $url);

#scrap date
echo $contents|tr ">" "\n" \
  | grep -m1 "SARS-CoV-2 variants of concern as of" \
  | cut -d\" -f4 \
  | tr " " "_";

#scrap variants
echo $contents|tr "<" "\n" \
  | grep -e "cov-lineages.org/lineage.html" \
         -e "github.com/cov-lineages" \
  | cut -d\> -f2 \
  | grep -m1 -B50 "B.1.1.7" \
  | grep -v       "B.1.1.7";
