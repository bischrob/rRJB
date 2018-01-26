
# rRJB is a package to hold personal functions created in R for reuse


## Purpose

I have written this package as a place to add useful and commonly
used functions that I can access from anywhere on github.

## Install
to install this package use this code:

``` {r install}
library(devtools)
install_github("bischrob/rRJB")
```

### Other Notes
I frequently use rio to import and export objects, but exporting to xlsx
does not work unles rtools is installed. Additionally I have to set the 
path for rtools using this code:

``` {r setpath}
Sys.setenv(R_ZIPCMD= "C:/Rtools/bin/zip")
```
