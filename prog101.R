##########################################################################
## Driver: Ciara Gray ciara-gray                                       ##
## Navigator: Max FlukeAndFeather                                    ##
## Date: 2024-01-14                                                   ##
##########################################################################

library(marinecs100b)

# Guiding questions -------------------------------------------------------

# What does KEFJ stand for?
# Kenai Fjords National Park
# Kenai Fjords Temperature Readings

# How was temperature monitored?
# HOBO V2 temperature loggers with measurement accuracy of ±0.2°C.
# Loggers inside a 1.5-inch diameter PVC pipe, bolted to a rock at 0.5m above
# mean lower low water (MLLW). Took measurements every 20/30/60min

# What's the difference between absolute temperature and temperature anomaly?
# Absolute temp is the temp at one measurement point in time. Temp anomaly is
# the difference between logger mean and regional mean for the entire time
# series.

# Begin exploring ---------------------------------------------------------

# How many kefj_* vectors are there?
?kefj
# 6 vectors

# How long are they?
# length 2187966

# What do they represent?
# Temperature, site, datetime, tidelevel, exposure, and season data from the
# experiment, which can be related to each other.

# Link to sketch

a_datetime <- kefj_datetime[kefj_site == "Aialik"]
common_interval <- a_datetime[2:length(a_datetime)] - a_datetime[1:length(a_datetime)-1]
table(common_interval)

common_interval

a_datetime[2:length(a_datetime)]
a_datetime[2:length(a_datetime)] - a_datetime[1:length(a_datetime)-1]

# Problem decomposition ---------------------------------------------------

# When and where did the hottest and coldest air temperature readings happen?
hottest_idx <- which.max(kefj_temperature)
kefj_temperature[hottest_idx]
# 36.092
kefj_datetime[hottest_idx]
# "2018-07-03 13:00:00 -08"
kefj_site[hottest_idx]
# Aialik
coldest_idx <- which.min(kefj_temperature)
kefj_temperature[coldest_idx]
# -11.613
kefj_datetime[coldest_idx]
# "2013-01-27 21:00:00 -08"
kefj_site[coldest_idx]
# Aialik


# Link to sketch

# Plot the hottest day
hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
# I want to make "2018-07-03" a variable so that I don't have to insert it every
# time, but it doesn't like it when I use it later.
hottest_day <- as.Date(kefj_datetime[hottest_idx])
hotday_start <- as.POSIXct("2018-07-03 00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2018-07-03 23:59", tz = "Etc/GMT+8")
hotday_idx <- which(kefj_site == hottest_site &
  kefj_datetime >= hotday_start &
  kefj_datetime <= hotday_end)
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime, hotday_temperature, hotday_exposure)


# Repeat for the coldest day

coldest_idx <- which.min(kefj_temperature)
coldest_time <- kefj_datetime[coldest_idx]
coldest_site <- kefj_site[coldest_idx]
coldday_start <- as.POSIXct("2013-01-27 00:00", tz = "Etc/GMT+8")
coldday_end <- as.POSIXct("2013-01-27 23:59", tz = "Etc/GMT+8")
coldday_idx <- which(kefj_site == coldest_site &
  kefj_datetime >= coldday_start &
  kefj_datetime <= coldday_end)
coldday_datetime <- kefj_datetime[coldday_idx]
coldday_temperature <- kefj_temperature[coldday_idx]
coldday_exposure <- kefj_exposure[coldday_idx]
plot_kefj(coldday_datetime, coldday_temperature, coldday_exposure)

# What patterns do you notice in time, temperature, and exposure? Do those
# patterns match your intuition, or do they differ?

# The hottest time is when the sensor is exposed to air during the middle of the
# day. The coldest time is when the sensor is exposed to air at night. This
# makes sense to me because the thermal capacity of water is higher than that of
# air. This means that the temperature of water is more stable than that of air,
# so it makes sense that the extremes are when the sensor is exposed to air.

# How did Traiger et al. define extreme temperature exposure?



# Translate their written description to code and calculate the extreme heat
# exposure for the hottest day.



# Compare your answer to the visualization you made. Does it look right to you?




# Repeat this process for extreme cold exposure on the coldest day.



# Putting it together -----------------------------------------------------

# Link to sketch

# Pick one site and one season. What were the extreme heat and cold exposure at
# that site in that season?

# Repeat for a different site and a different season.

# Optional extension: Traiger et al. (2022) also calculated water temperature
# anomalies. Consider how you could do that. Make a sketch showing which vectors
# you would need and how you would use them. Write code to get the temperature
# anomalies for one site in one season in one year.
