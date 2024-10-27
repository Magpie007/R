### stack overflow
[1. Read only select columns with read.table when number of columns is unknown](
https://stackoverflow.com/questions/17331398/read-only-select-columns-with-read-table-when-number-of-columns-is-unknown)

[2. How to read a CSV file with row.names = 1?](https://stackoverflow.com/questions/58956103/how-to-read-a-csv-file-with-row-names-1)
```
data <- read.csv("C:/example.csv")
rownames(data)=data[,1]
data=data[,-1]
```
