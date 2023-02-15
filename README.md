# get_variants_of_concern_from_ECDC
get a list of variants of concern from ECDC web page
(https://www.ecdc.europa.eu/en/covid-19/variants-concern)
in JSON format.

```
bash get.sh
```
```
[
"BA.2",
"BA.4",
"BA.5",
"BA.2.75",
"BQ.1",
"XBB",
"XBB.1.5",
"BA.2.3.20",
"BF.7",
"XBC",
"BN.1",
"CH.1.1",
"XAY",
]
```

the file `index.php` calls the `get.sh` program. Put it inside an apache or
nginx server and you will be able to call using javascript `fetch()` API.
