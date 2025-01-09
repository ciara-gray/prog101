# What does the following code do?
# Tip: `%%` is the remainder operator. E.g. 10 %% 4 is 2.
instrument_deployed_hm <- c(730, 915, 1345)
#time in hr and min
instrument_deployed_h <- floor(instrument_deployed_hm) / 100
?floor
#defining hr from hr and min
instrument_deployed_hdec <- (instrument_deployed_hm %% 100) / 60
#defining the min as a decimal of hr from hr and min
instrument_deployed <- instrument_deployed_h + instrument_deployed_hdec
#time instrument deployed in hr as a decimal

# Based on the code above, calculate the duration of instrument deployments
# using the instrument recovery times below. What units do the durations have?
instrument_recovered_hm <- c(1600, 1920, 2015)
instrument_recovered_h <- floor(instrument_recovered_hm) / 100
instrument_recovered_hdec <- (instrument_recovered_hm %% 100) / 60
instrument_recovered <- instrument_recovered_h + instrument_recovered_hdec

instrument_durations <- instrument_recovered - instrument_deployed

# Which site had the longest duration? Use conditional indexing.
site <- c("Santa Cruz", "Santa Rosa", "San Miguel")

site[max(instrument_durations)]
#got NA
site[instrument_deployed_hm != 730]

site[max(instrument_deployed)]
#got NA
instrument_deployed[1]
length(instrument_deployed)
site[instrument_deployed[1]]

max(instrument_deployed)
site[1]
site[max(instrument_deployed)]
#got NA again...... help

paste(instrument_deployed, site)
#I can see the longest duration is San Miguel but I want to get it using max...
site[max(instrument_deployed)]
#still got NA
str(instrument_deployed)
#it is numbers so that isnt the issue
#video said to use sum
#can't figure out how that helps this part...

