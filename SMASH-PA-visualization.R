##################################load data######################################################
library(readr)
setwd("C:/Users/Missy Dreier/Box/The Hamilton Lab/Studies- Complete or Collabs/SMASH Study/Data for analysis")
data <- read_csv("final_SMASH_data_clean.csv") # main dataset


##################################load packages######################################################

if (!require("tidyverse")) {install.packages("tidyverse"); require("tidyverse")}
if (!require("ggplot2")) {install.packages("ggplot2"); require("ggplot2")}



##################################Clean data######################################################

## remove rows where "hour in study" = NA. This means this was outside of the passive monitoring period
data <- data[-which(is.na(data$hour_in_study)),]


## remove anyone who does not have SM data (in our study, these are iPhone users or people whose passive monitoring app did not work during the study period)
data <- data %>%
  filter(Any_SM == 1)


## summarize data by day

day <- data %>%
  group_by(pid, day_in_study) %>%
  dplyr::summarise(sum_sm = sum(phone_applications_foreground_rapids_sumdurationsm, na.rm = TRUE), NAf_am = mean(Mood_1_am, na.rm=TRUE), NAf_pm = sum(Mood_1_pm, na.rm=TRUE), count_sm = sum(phone_applications_foreground_rapids_countsm, na.rm = TRUE), SM_Pos = mean(SMPos_1_pm, na.rm=TRUE), SM_Neg = mean(SMNeg_1_pm, na.rm=TRUE)) %>%
  mutate(NAf_sum = NAf_am + NAf_pm)

## add between-person variables (i.e., average of vars of interest for each participant, rather than participant by day)
day <- day %>%
  group_by(pid) %>%
  mutate(sm_average = mean(sum_sm, na.rm=TRUE), PA_sm_average = mean(SM_Pos, na.rm=TRUE), NA_sm_average = mean(SM_Neg, na.rm=TRUE), count_average = mean(count_sm, na.rm=TRUE))


##################################Plot 1 - Negative Mood & SM Time######################################################



day$pid <- as.factor(day$pid)
day %>%
  group_by(pid) %>%
  ggplot(aes(x=sum_sm,y=NAf_pm, color=day_in_study))  + 
  geom_point() +
  theme_bw() +
  theme(axis.text = element_blank(), axis.ticks = element_blank())  +
  labs(title = "Social Media Time & Evening Negative Mood") +
  ylab("Negative Mood")+
  xlab("SM Time") +
  scale_x_continuous(limits = c(0, 500)) +
  facet_wrap(~ pid)


ggsave("C:/Users/Missy Dreier/OneDrive - Rutgers University/Documents/Papers/2022_SMASH_PA/Results/Social Media & Evening Negative Mood.jpg", device="jpg")


##################################Plot 2 - Negative Mood & SM Counts######################################################

day$pid <- as.factor(day$pid)
day %>%
  group_by(pid) %>%
ggplot(aes(x=count_sm,y=NAf_pm, color=day_in_study))  + 
  geom_point() +
  theme_bw() +
  theme(axis.text = element_blank(), axis.ticks = element_blank())  +
  labs(title = "Social Media Checks & Evening Negative Mood") +
  ylab("Negative Mood")+
  xlab("SM Checks") +
  scale_x_continuous(limits = c(0, 500)) +
  facet_wrap(~ pid)


ggsave("C:/Users/Missy Dreier/OneDrive - Rutgers University/Documents/Papers/2022_SMASH_PA/Results/Social Media Checks & Evening Negative Mood.jpg", device="jpg")


##################################Plot 3 - Positive Affect & SM Time######################################################


day %>%
  group_by(pid) %>%
  ggplot(aes(x=SM_Pos,y=sum_sm, color=day_in_study))  + 
  geom_point() +
  theme_bw() +
  theme(axis.text = element_blank(), axis.ticks = element_blank())  +
  labs(title = "Positive Affect & Time on Social Media") +
  ylab("Time on SM")+
  xlab("SM Positive Affect") +
  facet_wrap(~ pid)



ggsave("C:/Users/Missy Dreier/OneDrive - Rutgers University/Documents/Papers/2022_SMASH_PA/Results/Positive Affect & Social Media Time.jpg", device="jpg")



##################################Plot 3 - Positive Affect & SM Counts######################################################

day %>%
  group_by(pid) %>%
  ggplot(aes(x=SM_Pos,y=count_sm, color=day_in_study))  + 
  geom_point() +
  theme_bw() +
  theme(axis.text = element_blank(), axis.ticks = element_blank())  +
  labs(title = "Positive Affect & Social Media Checks") +
  ylab("SM Checks")+
  xlab("SM Positive Affect") +
  facet_wrap(~ pid)



ggsave("C:/Users/Missy Dreier/OneDrive - Rutgers University/Documents/Papers/2022_SMASH_PA/Results/Positive Affect & Social Media Checks.jpg", device="jpg")
