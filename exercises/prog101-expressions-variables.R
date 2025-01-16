# What do the following expressions do?
temp_F <- temp_C * 9/5 - 32
#convert C to F
rect_area <- rect_length * rect_width
#compute area of rectangle

# Fill in the question marks to complete these expressions
triangle_area <- 1/2 * base * height
cylinder_volume <- pi * r^2 * h

# What are the errors in these expressions?
speed_m_s <- distance_m / time_s
# error was * instead of /
acceleration_m_s2 <- speed_m_s / time_s
# needed _ between words of variables
# might want to change "time_s" if you want to use different numbers for each
# equation
force_N <- mass * acceleration_m_s2
#<- not < and * not +

# The energy density of market squid is 4850 joules per gram[1]. If a 225 kg
# Risso's dolphin needs 5 million joules of energy per day[2] and a typical
# market squid is 35 g[1], then how many squid does a Risso's dolphin need to
# eat each day? Solve the above word problem in R. Consider how many variables
# you need to create, what to name them to make the code readable, and how to
# combine them into expressions.

density_squid_jpg <- 4850
grams_per_squid <- 35
joules_per_squid <- grams_per_squid * density_squid_jpg
dolphin_joules_total <- 5000000
squid_need <- dolphin_joules_total / joules_per_squid

# [1] Price et al. 2024 https://doi.org/10.3389/fmars.2023.1345525
# [2] Barlow et al. 2008 https://doi.org/10.3354/meps07695

