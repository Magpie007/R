[Copying data from Excel and import into R](http://www.sthda.com/english/wiki/reading-data-from-excel-files-xls-xlsx-into-r)

```

1. Open the Excel file containing your data: select and copy the data (ctrl + c)
2. Type the R code below to import the copied data from the clipboard into R and store the data in a data frame (my_data):

  my_data <- read.table(file = "clipboard", 
                      sep = "\t", header=TRUE)

```

[Read.table (data input)](http://math.furman.edu/~dcs/courses/math47/R/library/base/html/read.table.html)