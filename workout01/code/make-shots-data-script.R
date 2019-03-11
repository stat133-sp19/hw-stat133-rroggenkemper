# Title: Data Preparation
# Description: Cleans up data for the five NBA players 
# Input: none (all filenames are hardcoded) 
# Output: summary of each player's shots, and overall summary

# load data
curry = read.csv("../data/stephen-curry.csv")
iggy = read.csv("../data/andre-iguodala.csv")
durant = read.csv("../data/kevin-durant.csv")
thompson = read.csv("../data/klay-thompson.csv")
green = read.csv("../data/draymond-green.csv")

#change game_date to a character
curry$game_date = as.character(curry$game_date)
iggy$game_date = as.character(iggy$game_date)
durant$game_date = as.character(durant$game_date)
thompson$game_date = as.character(thompson$game_date)
green$game_date = as.character(green$game_date)

# add name column
curry$name= "Stephen Curry"
iggy$name = "Andre Iguodala"
durant$name = "Kevin Durant"
thompson$name = 'Klay Thompson'
green$name = "Draymond Green"

# change shot_made_flag
curry$shot_made_flag = c("shot_no", "shot_yes")[curry$shot_made_flag]
iggy$shot_made_flag = c("shot_no", "shot_yes")[iggy$shot_made_flag]
durant$shot_made_flag = c("shot_no", "shot_yes")[durant$shot_made_flag]
thompson$shot_made_flag = c("shot_no", "shot_yes")[thompson$shot_made_flag]
green$shot_made_flag = c("shot_no", "shot_yes")[green$shot_made_flag]

# add minute column
curry$minute = 12 * curry$period - curry$minutes_remaining
iggy$minute = 12 * iggy$period - iggy$minutes_remaining
durant$minute = 12 * durant$period - durant$minutes_remaining
thompson$minute = 12 * thompson$period - thompson$minutes_remaining
green$minute = 12 * green$period - green$minutes_remaining

# output summary of each player's shots
sink("../output/stephen-curry-summary.txt")
summary(curry)
sink()

sink("../output/andre-iguodala-summary.txt")
summary(iggy)
sink()

sink("../output/kevin-durant-summary.txt")
summary(durant)
sink()

sink("../output/klay-thompson-summary.txt")
summary(thompson)
sink()

sink("../output/draymond-green-summary.txt")
summary(green)
sink()



# create table with everyone 
all_five = rbind(curry, iggy, durant, thompson, green)

#export as csv and get summary
write.csv(x=all_five, file="../data/shots-data.csv")

sink("../output/shots-data-summary.txt")
summary(all_five)





















