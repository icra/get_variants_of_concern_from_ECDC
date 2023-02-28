# get_variants_of_concern_from_ECDC

Get the list of "variants of concern" from the ECDC web page directly in your terminal
(https://www.ecdc.europa.eu/en/covid-19/variants-concern)

```
$ bash get.sh
```
example output:
```
SARS-CoV-2_variants_of_concern_as_of_9_February_2023
BA.2
BA.4
BA.5
BA.2.75
BQ.1
XBB
XBB.1.5
BA.2.3.20
BF.7
XBC
BN.1
CH.1.1
XAY
```

Bonus: the file `index.php` calls `get.sh`, so you can put it inside an apache or
nginx server and you will be able to call using javascript `fetch()` API.

```javascript
fetch(your_url_from_your_server)
  .then(r=>r.text())
  .then(r=>{
    let arr = r.split("\n");
    console.log(arr);
  })
```
output:
```
['SARS-CoV-2_variants_of_concern_as_of_9_February_2023', 'BA.2', 'BA.4', 'BA.5', 'BA.2.75', 'BQ.1', 'XBB', 'XBB.1.5', 'BA.2.3.20', 'BF.7', 'XBC', 'BN.1', 'CH.1.1', 'XAY', '']
```
