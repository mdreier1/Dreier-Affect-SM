##################### load data ##################################

setwd("C:/Users/Missy Dreier/Box/The Hamilton Lab/Studies- Complete or Collabs/SMASH Study/Data for Analysis")
data <- read.csv("final_SMASH_data_clean.csv") # main dataset

.libPaths("C:/Users/Missy Dreier/Documents")

library(tidyverse)
install.packages("apaTables")
library(apaTables)

##################### subset data ##################################

data <- data %>%
  filter(Any_SM == 1)


day <- data %>%
  group_by(pid, day_in_study) %>%
  dplyr::summarise(sum_sm = sum(phone_applications_foreground_rapids_sumdurationsm_sns_community_video_sns, na.rm = TRUE), 
                   count_sm = sum(phone_applications_foreground_rapids_counteventsm_sns_community_video_sns, na.rm = TRUE),
                   NAf_am = mean(Mood_1_am, na.rm=TRUE), NAf_pm = mean(Mood_1_pm, na.rm=TRUE),
                   SM_Pos = mean(SMPos_1_pm, na.rm=TRUE), SM_Neg = mean(SMNeg_1_pm, na.rm=TRUE), 
                   Age = mean(Age, na.rm=TRUE),
                   SES_School = mean(SES_School, na.rm=TRUE), SES_Society = mean(SES_Society, na.rm=TRUE))

participant <- day %>%
  group_by(pid) %>%
  dplyr::summarise(sum_sm = mean(sum_sm, na.rm = TRUE), 
                   count_sm = mean(count_sm, na.rm = TRUE),
                   NAf_am = mean(NAf_am, na.rm=TRUE), NAf_pm = mean(NAf_pm, na.rm=TRUE),
                   SM_Pos = mean(SM_Pos, na.rm=TRUE), SM_Neg = mean(SM_Neg, na.rm=TRUE), 
                   Age = mean(Age, na.rm=TRUE),
                   SES_School = mean(SES_School, na.rm=TRUE), SES_Society = mean(SES_Society, na.rm=TRUE))




##################### make table ##################################

participant <- participant[,-c(1)]

setwd("C:/Users/Missy Dreier/OneDrive - Rutgers University/Documents/Papers/2022_SMASH_Affect/Dreier-Affect-SM")

apa.cor.table(participant, filename="SMASHpaperCORE.doc")
