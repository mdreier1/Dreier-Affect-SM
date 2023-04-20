# Dreier-Affect-SM

+ This code cleans the Rutgers Hamilton Lab SMASH study data to collapse oberservations onto the day-level and conducts Bayesian multilevel models to explore within-person associations between social media use and affect (both on and off social media)
+ Sample = 19 adolescents; Mage = 15.8(1.1)

### SMASH-PA-SM-Analyses.Rmd 

+ This is where I conduct the data cleaning (collapsing at day-level and person-centering the variables of interest). 
<<<<<<< HEAD
+ Here is use BOTH random intercepts and random slows in my models
=======
+ Here is use BOTH random intercepts and random slows in my models - which are the final results presented in this paper.
>>>>>>> 8350995764d48cd3f83b22a1d4926a6110608fa4
+ Then, I conduct several sets of Bayesian multilevel models.
+ For the Bayesian multilevel models, I used the brms packages.
+ These models (in the order they appear) test: 
1) whether social media 'screen time' predicts evening negative mood (accounting for morning negative mood)
2) whether number of times checking social media predicts evening negative mood (accounting for morning negative mood)
3) whether positive affect DURING social media use is associated with social media 'screen time'
4) whether positive affect DURING social media use is associated with number of times checking social media
5) whether negative affect DURING social media use is associated with social media 'screen time'
6) whether negative affect DURING social media use is associated with number of times social media is checked

+ For all Bayesian models, I was interested in within-person effects at the day-level. To isolate these effects, I controlled for between-person effects of each independent variable of interest (e.g., 'screen time', social media checks, positive affect on social media, negative affect on social media). I also controlled for each person's day in the study.

### FINAL Results - Random slope + random intercept.pdf

+ This document is the PDF of the output from "SMASH-PA-SM-Analyses.Rmd"

### SMASH-PA-SM-analyses-random-intercept-only.Rmd 

+ This is where I conduct the data cleaning (collapsing at day-level and person-centering the variables of interest). 
<<<<<<< HEAD
+ Here is use ONLY random intercepts in my models.
=======
+ Here is use ONLY random intercepts in my models - these are NOT the results presented in the paper but are presented for transparency and to highlight the important role of individual variability in this data.
>>>>>>> 8350995764d48cd3f83b22a1d4926a6110608fa4
+ Then, I conduct several sets of Bayesian multilevel models.
+ For the Bayesian multilevel models, I used the brms packages.
+ These models (in the order they appear) test: 
1) whether social media 'screen time' predicts evening negative mood (accounting for morning negative mood)
2) whether number of times checking social media predicts evening negative mood (accounting for morning negative mood)
3) whether positive affect DURING social media use is associated with social media 'screen time'
4) whether positive affect DURING social media use is associated with number of times checking social media
5) whether negative affect DURING social media use is associated with social media 'screen time'
6) whether negative affect DURING social media use is associated with number of times social media is checked

+ For all Bayesian models, I was interested in within-person effects at the day-level. To isolate these effects, I controlled for between-person effects of each independent variable of interest (e.g., 'screen time', social media checks, positive affect on social media, negative affect on social media). I also controlled for each person's day in the study.

### Results with ONLY random intercept.pdf

+ This document is the PDF of the output from "SMASH-PA-SM-analyses-random-intercept-only.Rmd"

### SMASH-PA-tables.Rmd

+ Using this document, I use the "flextable" package to create Tables 1 & 2 included in my paper (https://cran.r-project.org/web/packages/flextable/index.html) 

### smash_study_app_usage_summary_stats.Rmd

+ In this document, I summarize the social media apps used in this study 
+ The first table "Counts of Which SM Apps are Used by Any Participants" outlines how many participants used each social media app throughout the study period
+ The second table "Minutes of Apps Used Per Day" outlines, on average (across app users and non-users) each app was used per day in our study

### smash_study_app_usage_summary_stats.docx

+ This is the output with tables from "smash_study_app_usage_summary_stats.Rmd"
