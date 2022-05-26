## ---------------------------
##
## Script name: Importing PULSE Data into R
##
## Purpose of script: Set uo a data set that includes multiple waves of the Census Pulse Datahe
##
## Author: Dr. Christian Morales
##
## Date Created: 2022-05-25
## Email: chrismorales88@gmail.com
##
## ---------------------------
##
## Notes:
##   
##
## ---------------------------

## set working directory

setwd("~/Users/christianmorales/Documents/R-Studio")

## ---------------------------

options(scipen = 6, digits = 4) # I prefer to view outputs in non-scientific notation

## ---------------------------

## load up the packages we will need:  (uncomment as required)

require(tidyverse)
require(rio)           
require(here)          
# source("functions/packages.R")       # loads up all the packages we need

## ---------------------------

fall2021sample <-  
  bind_rows(      
    (left_join(
      import(here("data", "HPS_Week39_PUF_CSV", "pulse2021_puf_39.csv")),   
      import(here("data", "HPS_Week39_PUF_CSV", "pulse2021_repwgt_puf_39.csv")),
       by = c("SCRAM"))
     ),
     (left_join(
       import(here("data", "HPS_Week40_PUF_CSV", "pulse2021_puf_40.csv")),
       import(here("data", "HPS_Week40_PUF_CSV", "pulse2021_repwgt_puf_40.csv")), 
        by = c("SCRAM")
      )))
  


