# Dreier-Affect-SM

+ This code cleans the Rutgers Hamilton Lab SMASH study data to collapse oberservations onto the day-level and conducts Bayesian multilevel models to explore within-person associations between social media use and affect (both on and off social media)
+ Sample = 19 adolescents; Mage = 15.8(1.1)

### SMASH-PA-SM-Analyses.Rmd 

+ This is where I conduct the data cleaning (collapsing at day-level and person-centering the variables of interest). 
+ Then, I conduct several sets of Bayesian multilevel models.
+ Before conducting the Bayesian models, I test whether there is utility of using random slopes within my models by testing the difference in model fit between those with random intercepts ONLY vs. those with random intercepts + random slopes. (In the end, I used just random intercepts for all Bayesian models, because there was no difference in fit between the two for any of the models I conducted).
+ For the Bayesian multilevel models, I used the brms packages.
+ These models (in the order they appear) test: 
1) whether social media 'screen time' predicts evening negative mood (accounting for morning negative mood)
2) whether number of times checking social media predicts evening negative mood (accounting for morning negative mood)
3) whether positive affect DURING social media use is associated with social media 'screen time'
4) whether positive affect DURING social media use is associated with number of times checking social media
5) whether negative affect DURING social media use is associated with social media 'screen time'
6) whether negative affect DURING social media use is associated with number of times social media is checked

+ For all Bayesian models, I was interested in within-person effects at the day-level. To isolate these effects, I controlled for between-person effects of each independent variable of interest (e.g., 'screen time', social media checks, positive affect on social media, negative affect on social media). I also controlled for each person's day in the study.

### SMASH-PA-SM-Analyses.pdf

+ This document is the PDF of the output from "SMASH-PA-SM-Analyses.Rmd"

### SMASH-PA-tables.Rmd

+ Using this document, I use the "flextable" package to create Tables 1 & 2 included in my paper (https://cran.r-project.org/web/packages/flextable/index.html) 
