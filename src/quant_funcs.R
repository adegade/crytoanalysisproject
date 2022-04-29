#### Created by Terrill Toe ####
# This is a source file for functions that would be used within the analysis of Crypto Currencies

# Function for generating random samples of time ranges from time series data
daily_time_sampling <- function(days, dates){
  #Get the list of days from the passed list minus the number of days to generate. This prevents overlap and returning dates that
  #are not in your dataset
  new_dates <- dates[1:(length(dates)-days)]
  rand_index <- sample(1:length(new_dates), 1)
  b_date <- new_dates[rand_index]
  e_date <- b_date + days
  range_dt <- c(b_date, e_date)
  return(range_dt)
}