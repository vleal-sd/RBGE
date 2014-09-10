# RBGE Code Group :: Coursera courses :: SpoofSwirl.R
# ======================================================== 
# (10th September 2014)
# Author: Flic Anderson
# 
# ... Aims: load and install Flic's fork of the lovely {swirl} R package
# ...       to enjoy the slightly more "British" comments & compliments!

# install & load {devtools} - Hadley Wickham's epic devtools package
if (!require(devtools)){
  install.packages("devtools")
  library(devtools)
} 

# install Flic's fork of the swirl package from GitHub
install_github(repo="FlicAnderson/swirl")

# load the faux-swirl package
library(swirl)

# clear your workspace:
rm(list=ls())

# install the necessary courses, e.g:
install_from_swirl("Getting and Cleaning Data")

# run the package & follow all the instructions as usual:
swirl()


# -------------------#

## When you've finished, you should probably remove Flic's version and reinstall
## the original swirl package from the official repo at CRAN: 

# remove Flic's swirl-package
detach("package:swirl", unload=TRUE)

# re-install official swirl
if (!require(swirl)){
  install.packages("swirl")
  library(swirl)
} 

# continue! :D
