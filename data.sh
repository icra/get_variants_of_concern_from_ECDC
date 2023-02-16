#!/bin/bash
url="https://www.ecdc.europa.eu/en/covid-19/variants-concern"
contents=$(curl --silent $url)
echo $contents | tr ">" "\n"| grep "as of"
