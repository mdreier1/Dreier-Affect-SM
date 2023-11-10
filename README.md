# Dreier-Affect-SM

+ This code cleans the Rutgers Hamilton Lab SMASH study data to collapse oberservations onto the day-level and conducts Bayesian multilevel models to explore within-person associations between social media use and mood (both on and off social media)
+ Sample = 19 adolescents; Mage = 15.8(1.1)

## See Data Key.docx for a codebook of variables used

### SMASH-PA-SM-analyses - SAME-DAY.Rmd 

+ This is where I conduct the data cleaning (collapsing at day-level and person-centering the variables of interest). 
+ Here I conduct analyses at the SAME-DAY level.
+ I conduct chi-square difference tests to test the utility of random slopes in addition to intercepts
+ Ultimately, I only use random intercepts based on the findings of these tests
+ Then, I conduct several sets of Bayesian multilevel models.
+ For the Bayesian multilevel models, I used the brms packages.
+ These models (in the order they appear) test: 
1) whether social media 'screen time' predicts evening negative mood (accounting for morning negative mood)
2) whether number of times checking social media predicts evening negative mood (accounting for morning negative mood)
3) whether positive mood DURING social media use is associated with social media 'screen time'
4) whether positive mood DURING social media use is associated with number of times checking social media
5) whether negative mood DURING social media use is associated with social media 'screen time'
6) whether negative mood DURING social media use is associated with number of times social media is checked


### RESULTS - SAME-DAY.pdf

+ This document is the PDF of the output from "SMASH-PA-SM-analyses - SAME-DAY.Rmd"

### SMASH-PA-SM-analyses - LAGGED.Rmd 

+ This is where I conduct the data cleaning (collapsing at day-level and person-centering the variables of interest). 
+ Here I conduct analyses at the NEXT-DAY (lagged) level.
+ I additionally conduct t-tests to test gender differences on variables of interest
+ Then, I conduct several sets of Bayesian multilevel models.
+ For the Bayesian multilevel models, I used the brms packages.
+ These models (in the order they appear) test: 
1) whether social media 'screen time' predicts next morning negative mood (accounting for evening negative mood)
2) whether number of times checking social media predicts next morning negative mood (accounting for evening negative mood)
3) whether positive mood DURING social media use predicts social media 'screen time' next day
4) whether 'screen time' predicts next-day positive mood
5) whether positive mood DURING social media use predicts number of times checking social media next day
6) whether social media checking predicts next-day positive mood
7) whether negative mood DURING social media use predicts social media 'screen time' next day
8) whether social media 'screen time' predicts next-day negative mood during use
9) whether negative mood DURING social media use predicts number of times social media is checked next day
10) whether social media checking predicts next-day negative mood during use



### RESULTS - LAGGED.pdf

+ This document is the PDF of the output from "SMASH-PA-SM-analyses - LAGGED.Rmd"


### SMASH-PA-SM-analyses-random-slope.Rmd 

+ This is where I conduct the data cleaning (collapsing at day-level and person-centering the variables of interest). 
+ Here, I conduct analyses at the SAME-DAY level but using random slopes in addition to intercepts.
+ Then, I conduct several sets of Bayesian multilevel models.
+ For the Bayesian multilevel models, I used the brms packages.
+ These models (in the order they appear) test: 
1) whether social media 'screen time' predicts evening negative mood (accounting for morning negative mood)
2) whether number of times checking social media predicts evening negative mood (accounting for morning negative mood)
3) whether positive mood DURING social media use is associated with social media 'screen time'
4) whether positive mood DURING social media use is associated with number of times checking social media
5) whether negative mood DURING social media use is associated with social media 'screen time'
6) whether negative mood DURING social media use is associated with number of times social media is checked


### Supplemental Results - Random Slopes.pdf

+ This document is the PDF of the output from "SMASH-PA-SM-analyses-random-slope.Rmd"

## Notes on models from all analyses

+ For all Bayesian models, I was interested in within-person effects at the day-level. To isolate these effects, I controlled for between-person effects of each independent variable of interest (e.g., 'screen time', social media checks, positive mood on social media, negative mood on social media). I also controlled for each person's day in the study.

### SMASH-PA-tables.Rmd

+ Using this document, I use the "flextable" package to create Tables 1 & 2 included in my paper (https://cran.r-project.org/web/packages/flextable/index.html) 

### smash_study_app_usage_summary_stats.Rmd

+ In this document, I summarize the social media apps used in this study 
+ The first table "Counts of Which SM Apps are Used by Any Participants" outlines how many participants used each social media app throughout the study period
+ The second table "Minutes of Apps Used Per Day" outlines, on average (across app users and non-users) each app was used per day in our study

### smash_study_app_usage_summary_stats.docx

+ This is the output with tables from "smash_study_app_usage_summary_stats.Rmd"

### correlation matrix.R

+ This document creates the correlation matrix netween core study variables using the "apaTables" package in R (https://cran.r-project.org/web/packages/apaTables/apaTables.pdf)
