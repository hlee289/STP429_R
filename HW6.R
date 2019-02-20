#get current working directory
getwd()
#set current working directory to the directory where 'ASWELLS.txt' file is
setwd("C:/Users/lhjj1/Downloads/19-1/[TTh] STP 429_Experimental Statistics/Datasets")
#read 'ASWELLS.txt' file
df = read.table('ASWELLS.txt', header=TRUE, sep='\t')
attach(df)
#convert type of DEPTH.FT from factor to numeric
DEPTH.FT <- as.numeric(DEPTH.FT)
#Interaction model
mod.int <- lm(ARSENIC ~ LATITUDE+LONGITUDE+DEPTH.FT+LATITUDE*DEPTH.FT+LONGITUDE*DEPTH.FT)
summary(mod.int)
#Additive model
mod.add <- lm(ARSENIC ~ LATITUDE+LONGITUDE+DEPTH.FT)
summary(mod.add)