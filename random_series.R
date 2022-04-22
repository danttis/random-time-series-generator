cat("what series size do you want to get?")
size = scan(nmax=1)
year = sample(2000:2022, size, replace=TRUE)
month = sample(1:12, size, replace=TRUE)
day = sample(1:31, size, replace=TRUE)
date = NULL
hour = NULL
target = NULL
for(i in 1:size){
  date[i] = paste(year[i],month[i],day[i],sep = "-")
  hour[i] = paste(sample(1:12, 1),sample(1:60,1),
                  sample(1:60, 1),sep = ":")
  target[i] = sample(1:1776, 1)
}

table <- data.frame(date = date, hour=hour,target = target)
write.csv(table, "random_series.csv", row.names = FALSE) 
