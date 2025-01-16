x <- c(1.0, 3.4, 9.8, 3.9, 7.3, 8.2, 3.8, 2.2, 1.9, 6.9)
# How long are the output vectors for each of the following expressions?
length(x)
length(length(x))
#=1
atan(x)
length(atan(x))
#=10
x^2
length(x^2)
#=10
max(x)
length(max(x))
#=1
unique(x)
length(unique(x))
#=10


# LETTERS is a built-in vector containing the letters of the alphabet,
# capitalized.
# Use slice indexing to pull out the first 10 letters of the alphabet.
LETTERS[1:10]

# Use non-contiguous indexing to pull out the 5th, 10th, and 15th letters.
LETTERS[c(5, 10, 15)]
# c is short for combine, it creates vectors
letter_idx <- c(5, 10, 15)
LETTERS[letter_idx]
LETTERS[letter_idx - 1]
# this gives us 4, 9, 14 bcs it subtracts one from the index

# Convert the last ten letters of the alphabet to lower case.
tolower(LETTERS[17:26])
length(tolower(LETTERS[17:26]))

#can also use:
tolower(LETTERS[(length(LETTERS)) - 10:length(LETTERS)])

#can I use something like negative indexing to get the last values?

LETTERS[17:26]
#got Q-Z
LETTERS[-1:-10]
#got K-Z
LETTERS[0:-1]
#got B-Z
LETTERS[-10:-1]
#got K-Z
LETTERS[-8:-1]
#got I-Z
LETTERS[-17:-1]
#got R-Z
LETTERS[-16:-1]
#got Q-Z
