1. [Copying data from Excel and import into R](http://www.sthda.com/english/wiki/reading-data-from-excel-files-xls-xlsx-into-r)

```
1) Open the Excel file containing your data: select and copy the data (ctrl + c)
2) Type the R code below to import the copied data from the clipboard into R and store the data in a data frame (my_data):

  my_data <- read.table(file = "clipboard", 
                      sep = "\t", header=TRUE)
```

2. [Read.table (data input)](http://math.furman.edu/~dcs/courses/math47/R/library/base/html/read.table.html)

3. [read.csv() and read_csv()]( https://stackoverflow.com/questions/77809528/what-is-the-difference-between-the-read-csv-and-read-csv-function-in-r-when-work)

```
na.strings = c("N/A", "") in read.csv
na = c("N/A", "") in read_csv
```
