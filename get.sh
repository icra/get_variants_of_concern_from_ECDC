#!/bin/bash
url="https://www.ecdc.europa.eu/en/covid-19/variants-concern"
curl --silent $url \
  | grep -e "cov-lineages.org/lineage.html" \
         -e "github.com/cov-lineages"       \
  | cut -d\> -f3 | cut -d\< -f1 \
  | grep -m1 -B50 "B.1.1.7" \
  | grep -v       "B.1.1.7"
